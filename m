Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAaOY-0001eh-8V
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 09:02:59 +0000
Received: by lbcpe5 with SMTP id pe5so27894447lbc.2
 for <barebox@lists.infradead.org>; Thu, 02 Jul 2015 02:02:36 -0700 (PDT)
Date: Thu, 2 Jul 2015 12:09:16 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150702120916.b6082f00f7ae0186670d065a@gmail.com>
In-Reply-To: <1435827017-1999-3-git-send-email-alllecs@yandex.ru>
References: <1435827017-1999-1-git-send-email-alllecs@yandex.ru>
 <1435827017-1999-3-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [RFC V4 2/3] ddr_spd: add routune for printing SPD contents in
 human readable format
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu,  2 Jul 2015 11:50:16 +0300
Alexander Smirnov <alllecs@yandex.ru> wrote:

> Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
> ---
>  common/ddr_spd.c  | 290 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/ddr_spd.h |   1 +
>  2 files changed, 291 insertions(+)
> =

> diff --git a/common/ddr_spd.c b/common/ddr_spd.c
> index ea0b529..6757d58 100644
> --- a/common/ddr_spd.c
> +++ b/common/ddr_spd.c
> @@ -61,3 +61,293 @@ uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd=
_eeprom_s *spd)
>  =

>  	return 0;
>  }
> +
> +static char *heights[] =3D {
> +	"<25.4",
> +	"25.4",
> +	"25.4 - 30.0",
> +	"30.0",
> +	"30.5",
> +	"> 30.5",
> +};
> +
> +static char *sdram_voltage_interface_level[] =3D {
> +	"TTL (5V tolerant)",
> +	"LVTTL (not 5V tolerant)",
> +	"HSTL 1.5V",
> +	"SSTL 3.3V",
> +	"SSTL 2.5V",
> +	"SSTL 1.8V",
> +};
> +
> +static char *ddr2_module_types[] =3D {
> +	"RDIMM (133.35 mm)",
> +	"UDIMM (133.25 mm)",
> +	"SO-DIMM (67.6 mm)",
> +	"Micro-DIMM (45.5 mm)",
> +	"Mini-RDIMM (82.0 mm)",
> +	"Mini-UDIMM (82.0 mm)",
> +};
> +
> +static char *refresh[] =3D {
> +	"15.625",
> +	"3.9",
> +	"7.8",
> +	"31.3",
> +	"62.5",
> +	"125",
> +};
> +
> +static char *type_list[] =3D {
> +	"Reserved",
> +	"FPM DRAM",
> +	"EDO",
> +	"Pipelined Nibble",
> +	"SDR SDRAM",
> +	"Multiplexed ROM",
> +	"DDR SGRAM",
> +	"DDR SDRAM",
> +	[SPD_MEMTYPE_DDR2] =3D "DDR2 SDRAM",
> +	"FB-DIMM",
> +	"FB-DIMM Probe",
> +	[SPD_MEMTYPE_DDR3] =3D "DDR3 SDRAM",
> +};
> +
> +static int funct(uint8_t addr)
> +{
> +	int t;
> +
> +	t =3D ((addr >> 4) * 10 + (addr & 0xf));
> +
> +	return t;
> +}
> +
> +static int des(uint8_t byte)
> +{
> +	int k;
> +
> +	k =3D (byte & 0x3) * 10 / 4;
> +
> +	return k;
> +}
> +
> +static int integ(uint8_t byte)
> +{
> +	int k;
> +
> +	k =3D (byte >> 2);
> +
> +	return k;
> +}
> +
> +static int ddr2_sdram_ctime(uint8_t byte)
> +{
> +	int ctime;
> +
> +	ctime =3D (byte >> 4) * 100;
> +	if ((byte & 0xf) <=3D 9)
> +		ctime +=3D (byte & 0xf) * 10;
> +	else if ((byte & 0xf) =3D=3D 10)
> +		ctime +=3D 25;
> +	else if ((byte & 0xf) =3D=3D 11)
> +		ctime +=3D 33;
> +	else if ((byte & 0xf) =3D=3D 12)
> +		ctime +=3D 66;
> +	else if ((byte & 0xf) =3D=3D 13)
> +		ctime +=3D 75;
> +
> +	return ctime;
> +}
> +
> +void ddr_spd_print(uint8_t *record)
> +{
> +	int highestCAS =3D 0;
> +	int cas[256];
> +	int i, i_i, k, x, y;
> +	int ddrclk, tbits, pcclk;
> +	int trcd, trp, tras;
> +	int ctime;
> +	uint8_t parity;
> +	char *ref, *sum;
> +	struct ddr2_spd_eeprom_s *s =3D (struct ddr2_spd_eeprom_s *)record;
> +
> +	ctime =3D ddr2_sdram_ctime(s->clk_cycle);
> +	ddrclk =3D 2 * (1000 / ctime) * 100;
> +	tbits =3D (s->res_7 << 8) + (s->dataw);
> +	if ((s->config & 0x03) =3D=3D 1)
> +		tbits =3D tbits - 8;
> +
> +	pcclk =3D ddrclk * tbits / 8;
> +	pcclk =3D pcclk - (pcclk % 100);
> +	i_i =3D (s->nrow_addr & 0x0f) + (s->ncol_addr & 0x0f) - 17;
> +	k =3D ((s->mod_ranks & 0x7) + 1) * s->nbanks;
> +	trcd =3D ((s->trcd >> 2) + ((s->trcd & 3) * 0.25)) / ctime * 100;
> +	trp =3D ((s->trp >> 2) + ((s->trp & 3) * 0.25)) / ctime * 100;
> +	tras =3D s->tras * 100 / ctime ;
> +	x =3D (int)(ctime / 100);
> +	y =3D (ctime - (int)((ctime / 100) * 100)) / 10;
> +
> +	for (i_i =3D 2; i_i < 7; i_i++) {
> +		if (s->cas_lat & 1 << i_i) {
> +			highestCAS =3D i_i;
> +			cas[highestCAS]++;
> +		}
> +	}
> +
> +	if (ddr2_spd_checksum_pass(s))
> +		sum =3D "ERR";
> +	else
> +		sum =3D "OK";
> +

Please check mem_type here too. You use ddr2_spd_checksum_pass() for any ty=
pe memory.

> +	printf("---=3D=3D=3D SPD EEPROM Information =3D=3D=3D---\n");
> +	printf("%-50s %s (0x%0X)\n", "EEPROM Checksum of bytes 0-62",
> +		sum, s->cksum);
> +	printf("%-50s %d\n", "# of bytes written to SDRAM EEPROM",
> +		s->info_size);
> +	printf("%-50s %d\n", "Total number of bytes in EEPROM",
> +		1 << (s->chip_size));
> +
> +	if (s->mem_type < ARRAY_SIZE(type_list))
> +		printf("%-50s %s\n", "Fundamental Memory type",
> +			type_list[s->mem_type]);
> +	else
> +		printf("%-50s (%02x)\n", "Warning: unknown memory type",
> +			s->mem_type);
> +
> +	printf("%-50s %x.%x\n", "SPD Revision", s->spd_rev >> 4,
> +		s->spd_rev & 0x0f);
> +	if (s->mem_type !=3D SPD_MEMTYPE_DDR2) {
> +		printf("Can't dump extended information for non-DDR2 memory\n");
> +		return;
> +	}
> +
> +	printf("\n---=3D=3D=3D Memory Characteristics =3D=3D=3D---\n");
> +	printf("%-50s %d MHz (PC2-%d)\n", "Maximum module speed",
> +		ddrclk, pcclk);
> +	if (i_i > 0 && i_i <=3D 12 && k > 0)
> +		printf("%-50s %d MB\n", "Size", (1 << i_i) * k);
> +	else
> +		printf("%-50s INVALID: %02x %02x %02x %02x\n", "Size",
> +			s->nrow_addr, s->ncol_addr, s->mod_ranks, s->nbanks);
> +
> +	printf("%-50s %d x %d x %d x %d\n", "Banks x Rows x Columns x Bits",
> +		s->nbanks, s->nrow_addr, s->ncol_addr, s->dataw);
> +	printf("%-50s %d\n", "Ranks", (s->mod_ranks & 0x7) + 1);
> +	printf("%-50s %d bits\n", "SDRAM Device Width", s->primw);
> +
> +	if (s->mod_ranks >> 5 < ARRAY_SIZE(heights))
> +		printf("%-50s %s mm\n", "Module Height",
> +			heights[s->mod_ranks >> 5]);
> +	else
> +		printf("Error height\n");
> +
> +	if ((fls(s->dimm_type) - 1) < ARRAY_SIZE(ddr2_module_types))
> +		printf("%-50s %s\n", "Module Type",
> +			ddr2_module_types[fls(s->dimm_type) - 1]);
> +	else
> +		printf("Error module type\n");
> +
> +	printf("%-50s ", "DRAM Package ");
> +	if ((s->mod_ranks & 0x10) =3D=3D 1)
> +		printf("Stack\n");
> +	else
> +		printf("Planar\n");
> +	if (s->voltage < 7)

use ARRAY_SIZE here

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
