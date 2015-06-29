Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9bEw-0000Ml-DE
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 15:44:59 +0000
Received: by lagc2 with SMTP id c2so14989282lag.3
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2015 08:44:35 -0700 (PDT)
Date: Mon, 29 Jun 2015 18:51:09 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150629185109.8b39a74f44b286b67c9506c3@gmail.com>
In-Reply-To: <1435588017-24949-3-git-send-email-alllecs@yandex.ru>
References: <1435588017-24949-1-git-send-email-alllecs@yandex.ru>
 <1435588017-24949-3-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [RFC V3 2/3] ddr_spd: add routune for printing SPD contents in
 human readable format
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

On Mon, 29 Jun 2015 17:26:56 +0300
Alexander Smirnov <alllecs@yandex.ru> wrote:

> Signed-off-by: Alexander Smirnov <alllecs@yandex.ru>
> ---
>  common/ddr_spd.c  | 239 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/ddr_spd.h |   1 +
>  2 files changed, 240 insertions(+)
> =

> diff --git a/common/ddr_spd.c b/common/ddr_spd.c
> index ea0b529..380ea18 100644
> --- a/common/ddr_spd.c
> +++ b/common/ddr_spd.c
> @@ -61,3 +61,242 @@ uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd=
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
> +	"> 30.5"
> +};
> +
> +static char *sdram_voltage_interface_level[] =3D {
> +	"TTL (5V tolerant)",
> +	"LVTTL (not 5V tolerant)",
> +	"HSTL 1.5V",
> +	"SSTL 3.3V",
> +	"SSTL 2.5V",
> +	"SSTL 1.8V"
> +};
> +
> +static char *ddr2_module_types[] =3D {
> +	"RDIMM (133.35 mm)",
> +	"UDIMM (133.25 mm)",
> +	"SO-DIMM (67.6 mm)",
> +	"Micro-DIMM (45.5 mm)",
> +	"Mini-RDIMM (82.0 mm)",
> +	"Mini-UDIMM (82.0 mm)"
> +};
> +
> +static char *refresh[] =3D {
> +	"15.625",
> +	"3.9",
> +	"7.8",
> +	"31.3",
> +	"62.5",
> +	"125"
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
> +	"DDR2 SDRAM",
> +	"FB-DIMM",
> +	"FB-DIMM Probe",
> +	"DDR3 SDRAM"
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
> +	char *ref;
> +	struct ddr2_spd_eeprom_s *s =3D (struct ddr2_spd_eeprom_s *)record;
> +
> +	ctime =3D ddr2_sdram_ctime(s->clk_cycle);
> +	ddrclk =3D 2 * (1000 / ctime) * 100;
> +	tbits =3D ((s->res_7) << 8) + (s->dataw);
> +	if (((s->config) & 0x03) =3D=3D 1)
> +		tbits =3D tbits - 8;
> +
> +	pcclk =3D ddrclk * tbits / 8;
> +	pcclk =3D pcclk - (pcclk % 100);
> +	i_i =3D ((s->nrow_addr) & 0x0f) + ((s->ncol_addr) & 0x0f) - 17;
> +	k =3D (((s->mod_ranks) & 0x7) + 1) * (s->nbanks);
> +	trcd =3D (((s->trcd) >> 2) + (((s->trcd) & 3) * 0.25)) / ctime * 100;
> +	trp =3D (((s->trp) >> 2) + (((s->trp) & 3) * 0.25)) / ctime * 100;
> +	tras =3D (s->tras) * 100 / ctime ;
> +	x =3D (int)(ctime / 100);
> +	y =3D (ctime - (int)((ctime / 100) * 100)) / 10;
> +
> +	for (i_i =3D 2; i_i < 7; i_i++) {
> +		if ((s->cas_lat) & (1 << i_i)) {
> +			highestCAS =3D i_i;
> +			cas[highestCAS]++;
> +		}
> +	}
> +	printf("---=3D=3D=3D SPD EEPROM Information =3D=3D=3D---\n");
> +	printf("%-50s OK (0x%0X)\n", "EEPROM Checksum of bytes 0-62", s->cksum);


Hmmmm.
Your checksum is always OK :)

Please use ddr2_spd_checksum_pass().

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
