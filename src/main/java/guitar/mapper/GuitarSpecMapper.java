package guitar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import guitar.domain.Guitar;
import guitar.domain.GuitarSpec;

public interface GuitarSpecMapper {

	@Select("select * from guitarSpec where serialNumber=#{serialNumber}")
	List<GuitarSpec> serialNumberSpecList(String serialNumber);
}
