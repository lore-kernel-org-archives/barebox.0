Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7nmK-0001Et-Hp
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 16:44:02 +0000
Received: by laka10 with SMTP id a10so29650683lak.0
 for <barebox@lists.infradead.org>; Wed, 24 Jun 2015 09:43:38 -0700 (PDT)
Date: Wed, 24 Jun 2015 19:50:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150624195004.c2924144ed6373ec35dc7217@gmail.com>
In-Reply-To: <1435150649-10266-4-git-send-email-alllecs@yandex.ru>
References: <1435150649-10266-1-git-send-email-alllecs@yandex.ru>
 <1435150649-10266-4-git-send-email-alllecs@yandex.ru>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC V2 3/3] add decode command (SPD EEPROM data decoder)
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, 24 Jun 2015 15:57:29 +0300
Alexander Smirnov <alllecs@yandex.ru> wrote:

> decode-dimms perl script is used as prototype
> (see https://github.com/groeck/i2c-tools/blob/master/eeprom/decode-dimms).
> =

> Here is a sample decode output:
> =

> barebox@barebox sandbox:/ decode env/crucial_pc2-6400_ddr2
> Decoding EEPROM: env/crucial_pc2-6400_ddr2
> =

> ---=3D=3D=3D SPD EEPROM Information =3D=3D=3D---
> EEPROM Checksum of bytes 0-62			 OK (0xCA)
> Total number of bytes in EEPROM			 256
> Fundamental Memory type				 DDR2 SDRAM
> SPD Revision					 1.3
> =

> ---=3D=3D=3D Memory Characteristics =3D=3D=3D---
> Maximum module speed				 800 MHz (PC2-6400)
> Size						 1024 MB
> Banks x Rows x Columns x Bits			 8 x 14 x 10 x 64
> Ranks						 1
> SDRAM Device Width				 8 bits
> Module Height					 30.0 mm
> Module Type					 SO-DIMM (67.6 mm)
> DRAM Package					 Planar
> Voltage Interface Level				 SSTL 1.8V
> Module Configuration Type 			 No Parity
> Refresh Rate					 Reduced (7.8 us) - Self Refresh
> Supported Burst Lengths				 4, 8
> Supported CAS Latencies (tCL)			 6T
> tCL-tRCD-tRP-tRAS				 6-6-6-18 as DDR2-800
> Minimum Cycle Time				 250 (ns*100) at CAS 6
> Maximum Access Time				 4 (ns*10) at CAS 6
> Maximum Cycle Time (tCK max)			 8 ns
> =

> ---=3D=3D=3D Timing Parameters =3D=3D=3D---
> Address/Command Setup Time Before Clock (tIS)	 17 (ns*100)
> Address/Command Hold Time After Clock (tIH)	 25 (ns*100)
> Data Input Setup Time Before Strobe (tDS)	 5 (ns*100)
> Data Input Hold Time After Strobe (tDH)		 12 (ns*100)
> Minimum Row Precharge Delay (tRP)		 150 (ns*10)
> Minimum Row Active to Row Active Delay (tRRD)	 75 (ns*10)
> Minimum RAS# to CAS# Delay (tRCD)		 150 (ns*10)
> Minimum RAS# Pulse Width (tRAS)			 450 (ns*10)
> Write Recovery Time (tWR)			 150 (ns*10)
> Minimum Write to Read CMD Delay (tWTR)		 75 (ns*10)
> Minimum Read to Pre-charge CMD Delay (tRTP)	 75 (ns*10)
> Minimum Active to Auto-refresh Delay (tRC)	 600 (ns*10)
> Minimum Recovery Delay (tRFC)			 1270 (ns*10)
> Maximum DQS to DQ Skew (tDQSQ)			 20 (ns*100)
> Maximum Read Data Hold Skew (tQHS)		 30 (ns*100)
> =

> ---=3D=3D=3D Manufacturing Information =3D=3D=3D---
> Manufacturer JEDEC ID				 7f 7f 7f 7f 7f 9b 00 00
> Part Number					 CT12864AC800.M8FM8
> Manufacturing Date				 2014-W24
> Assembly Serial Number				 0x00000000
> =

> TODOs:
> =

>   * Timing Parameters section output format is slightly
>     differ from decode-dimms' format;
>   * supports only DDR2 SPD EEPROM.
> =

> Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
> ---
>  commands/Kconfig  |  7 ++++++
>  commands/Makefile |  1 +
>  commands/decode.c | 65 +++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 73 insertions(+)
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index bb6674e..9230873 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2102,6 +2102,13 @@ config CMD_STATE
>  	depends on STATE
>  	prompt "state"
>  =

> +config CMD_DECODE
> +	tristate
> +	prompt "decode"
> +	select DDR_SPD
> +	help
> +	  decode spd eeprom
> +
>  # end Miscellaneous commands
>  endmenu
>  =

> diff --git a/commands/Makefile b/commands/Makefile
> index 3698347..71cd877 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -112,3 +112,4 @@ obj-$(CONFIG_CMD_NV)		+=3D nv.o
>  obj-$(CONFIG_CMD_DEFAULTENV)	+=3D defaultenv.o
>  obj-$(CONFIG_CMD_STATE)		+=3D state.o
>  obj-$(CONFIG_CMD_DHCP)		+=3D dhcp.o
> +obj-$(CONFIG_CMD_DECODE)	+=3D decode.o
> diff --git a/commands/decode.c b/commands/decode.c
> new file mode 100644
> index 0000000..80da80c
> --- /dev/null
> +++ b/commands/decode.c
> @@ -0,0 +1,65 @@
> +#include <fcntl.h>
> +#include <common.h>
> +#include <getopt.h>
> +#include <command.h>
> +#include <envfs.h>
> +#include <errno.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <malloc.h>
> +#include <globalvar.h>
> +#include <stdlib.h>
> +#include <stdio.h>
> +#include <ddr_spd.h>

Please drop unused header files.

> +
> +void dump(uint8_t *addr, int len)
> +{
> +	int i;
> +
> +	printf("\t 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f\n\n");
> +
> +	for (i =3D 0; i < len; i++) {
> +		if ((i % 0x10) =3D=3D 0x00) {
> +			printf("%07x:", i);
> +		}
> +		printf(" %02x", addr[i]);
> +		if ((i % 0x10) =3D=3D 0xf) {
> +			printf("\n");
> +		}
> +	}
> +
> +	printf("\n");
> +}

We have no need in this dump function in barebox because

  * we can use 'md' command with '-s' from barebox command line;
  * we can use memory_display from C code.

> +
> +static int do_decode(int argc, char *argv[])
> +{
> +	int fp;

Please change 'fp' -> 'fd' as Sascha already asked.

> +	uint8_t record[256];
> +
> +	if (argc !=3D 2) {
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	fp =3D open(argv[1], O_RDONLY);
> +
> +	if (fp < 0) {
> +		printf("could not open %s: %s\n", argv[args], errno_str());

You can't continue command execution after this error.
Please return with error code status.

> +	}
> +
> +	read(fp, &record[0], 256);
> +	close(fp);
> +
> +	printf("Decoding EEPROM: %s\n\n", argv[1]);
> +
> +	prin(record);
> +	printf("\n\n");
> +
> +	return 0;
> +}
> +BAREBOX_CMD_HELP_START(decode)
> +BAREBOX_CMD_HELP_TEXT("Not enough or more than one argument to continue.=
")

This does not look like help message for the command.

> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(decode)
> +	.cmd            =3D do_decode,
> +BAREBOX_CMD_END
> -- =

> 2.1.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
