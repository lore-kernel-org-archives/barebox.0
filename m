Delivery-date: Tue, 12 Mar 2024 14:52:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rk2Y7-002jYE-22
	for lore@lore.pengutronix.de;
	Tue, 12 Mar 2024 14:52:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rk2Y6-0000sA-MT
	for lore@pengutronix.de; Tue, 12 Mar 2024 14:52:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c9XbbkSWVzd4IPJTtG03sAox8q/bFFY6fhvwQGUwTsw=; b=egymnKyLjCZDY14oOeFnp0fTu7
	tjpkodOCRkP8dnI/sABPIzt/i36xUnQVXph6+djgHGxvMTphgvZobCmAFGyY9/mbP+jNeBkgcY1li
	3CBwottwb27ODP68o4rzg89+ec+msU7xf45mzvjCPNPjqE1G+hlepi0AGOAka035oSsKe6fWZ7LeZ
	6dPvogUNKAVx3znbgAW9nNBggMpAr0hkuj/D7IkOdrBV1CtelyEBu0+yN94AeEaQjoUriIBpgniU5
	iTYM+SLP4JuieJ8/JthZWNUhWGgIBe8IHlh8B47cQzh4It+7sfcCM0YSuxJiVHk5mDCVu3lfqZ+dz
	a8hA/sQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rk2XQ-00000005yuF-1Ocl;
	Tue, 12 Mar 2024 13:51:28 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rk2XL-00000005ytD-48UL
	for barebox@lists.infradead.org;
	Tue, 12 Mar 2024 13:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rempel-privat.de;
	s=s31663417; t=1710251479; x=1710856279; i=linux@rempel-privat.de;
	bh=LCdH39wt6FEcy1TTPvESZ0gluRFqqoROs3OKkxrBfS4=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=nCpvfS+gQkjmDlsDnwM1jj5evQrjO0SCY8aD/QzXBomFR8U33mfQkdZ5UQ42PUe6
	 9uKMi86SrlxeO9rENIYPac3c2BNQVOG4jy+sNH2x2sMSjfXJ39LOI/qVP0L9HDlGe
	 m1NuJ1FsZIvPTSfimbsFEkp6zNI+Ewpzxq6kwWSY1/XFp+23LbGB8VFOurnSvTPVi
	 2rRuW6UhaFool2nLb8hotyqctIOaTUIET1n3dj/LYcZjQU72XnYuYZbgLP69JwLhW
	 QqgDeritcY9LXVw20gAVfbfVhh3B12/ISA86guP4LveE1E6/2glwvQpts8gYOXaO1
	 UdoLeHtcwX5H3NCs4Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.86.182] ([95.91.192.148]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N95eJ-1qi3Dk1Vtn-016A20 for
 <barebox@lists.infradead.org>; Tue, 12 Mar 2024 14:51:19 +0100
Message-ID: <454d1374-3cda-42bf-97d5-56bbd84eea66@rempel-privat.de>
Date: Tue, 12 Mar 2024 14:51:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: barebox@lists.infradead.org
References: <20240312100057.3572762-1-o.rempel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <20240312100057.3572762-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:DWv9frEuJEzoT2rfEhwh3xbv2Co85Pa+0ZPOJFMALxH2465ZZYO
 TaEOqFte/t9b1nlGvr8jluCKsa8qfkHJAkK0fDMkqvFL53A6GhBqgkvpnm4++Zzne9j9ve7
 Fcc89VgZ0Gp1H16XKKGlfVmoe4ZNYv7bzP8ZW61HavUoK6SYKbTakZum5aSpaZJr8eRIEaP
 xqXO2PTWroXF83jQQS66g==
UI-OutboundReport: notjunk:1;M01:P0:2JSkn7gyFAQ=;xezThKvSARCDufRanXitVFWMNfh
 fG/nTmtVwo9Ci/ES6FBRpqXwAj0YLe/LRJG8ZPqalu7hBlmm2gragR7EsnSzllAQ9AkJn4sg8
 3L8MKk99pebDDg2eLgsW2Fj1tqEj7XG5NSPbPDuHebvVP768w1Fw7iYgRZKWmraSsNrKg4ja+
 RULh+d1Uok2gECFE+AtciVsKIiM9hXRpMrgp3aJBFXpXRE/QY3HKKd019f6QQBz6rI0U4XiuP
 CZ5iHicZN+zM3PhW/mqX86bEnQD0ykLBJzjNXhBsJDSkAlL9+wEAfZDNNq4VDA00lDcmDwLM/
 uHGGtjjC+uG5s541kE05kBO32tZmX8BGB/2eu77Z1GX3E+Yh5qfnFBwKOtMau8E7b9GEr4yty
 Ll3FpH02XJ8YCpHxrHC7F8+AYt1Y2veTw3JFg7tuWdQw3oktthyZMJ1tq0F9ZZkx2e0NJHyVb
 VCjQT7kXZwh3XyhDYLea+VKTo/hMV/iGaohLZOVpaxyTpMRD+dojrYQhnoQV7VortdVA2wTTd
 H20x51pShc4pG8zoFF36yYvG7RJhk+TLHHbui6va0myaCi04Fk5hbHs8DhlL6uEMMx9pIxLjX
 3snrx9rb5/dcw9SU0YLbUkohCobcooby6Vz2StC9GeXKxO6wuASFXhJRqUHieihjZq7YzR0Qf
 P5Tk+q1QzUnA5ghtwgKXfMIubRW7C7QuWiVdDLotvLdwo138KHA8IjcXdqpsOp9Q8UHpIseAy
 E6I6wfgM6+hjsiLUDw47Fhjnb/O5Nu4KcQ+qWjEdZq4zdYutXSIoTNr+MGawwVRJozoieGsRC
 HOHV8vnB/qgoo1+40TW67Yt5gSa4v37BMPrgm8X/+9tUE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_065124_652666_53270DD6 
X-CRM114-Status: GOOD (  30.04  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] ARM: i.MX8MP: skov: add MAC address assignment support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Please ignore this patch. Ahmad gave me a better idea.

Am 12.03.24 um 11:00 schrieb Oleksij Rempel:
> Assign MAC address to main CPU interface and switch ports.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>   arch/arm/boards/skov-imx8mp/board.c | 131 ++++++++++++++++++++++++++++
>   arch/arm/dts/imx8mp-skov.dts        |   1 +
>   2 files changed, 132 insertions(+)
>
> diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-=
imx8mp/board.c
> index 3b6eb7b080..94d0bc75f9 100644
> --- a/arch/arm/boards/skov-imx8mp/board.c
> +++ b/arch/arm/boards/skov-imx8mp/board.c
> @@ -10,9 +10,12 @@
>   #include <gpio.h>
>   #include <init.h>
>   #include <io.h>
> +#include <linux/nvmem-consumer.h>
>   #include <mach/imx/bbu.h>
>   #include <mach/imx/generic.h>
>   #include <mach/imx/iomux-mx8mp.h>
> +#include <net.h>
> +#include <of_net.h>
>
>   struct skov_imx8mp_priv {
>   	struct device *dev;
> @@ -85,6 +88,134 @@ static const struct board_description imx8mp_variant=
s[] =3D {
>   	},
>   };
>
> +static void skov_imx8mp_get_src_mac(struct skov_imx8mp_priv *priv,
> +				   struct device_node *s_np, u8 *mac,
> +				   int dst_id)
> +{
> +	char str[sizeof("xx:xx:xx:xx:xx:xx")];
> +	struct eth_device *s_edev;
> +	int ret;
> +
> +	s_edev =3D of_find_eth_device_by_node(s_np);
> +	if (s_edev && is_valid_ether_addr(s_edev->ethaddr)) {
> +		/* If the source device has a valid MAC address, use it in
> +		 * case address is overwritten by user.
> +		 */
> +		memcpy(mac, s_edev->ethaddr, ETH_ALEN);
> +		return;
> +	}
> +
> +	/* if the source device has no valid MAC address, try to get it from
> +	 * nvmem if it configured in the devicetree.
> +	 */
> +	ret =3D of_get_mac_addr_nvmem(s_np, mac);
> +	if (!ret)
> +		return;
> +
> +	/* if the source device has no valid MAC address, generate one with
> +	 * vendor OUI.
> +	 */
> +	ret =3D generate_ether_addr(mac, dst_id);
> +	if (ret)
> +		random_ether_addr(mac);
> +
> +	/* set SKOV OUI */
> +	mac[0] =3D 0x00;
> +	mac[1] =3D 0x0e;
> +	mac[2] =3D 0xcd;
> +	ethaddr_to_string(mac, str);
> +	dev_warn(priv->dev, "Failed to get eth addr for idx=3D%d. Generating o=
ne: %s\n",
> +		 dst_id, str);
> +}
> +
> +static int skov_imx8mp_eth_register_ethaddr(struct skov_imx8mp_priv *pr=
iv,
> +					    struct device_node *d_np,
> +					    struct device_node *s_np,
> +					    int dst_id)
> +{
> +	struct eth_device *d_edev;
> +	u8 mac[ETH_ALEN] =3D { 0 };
> +
> +	d_edev =3D of_find_eth_device_by_node(d_np);
> +	if (d_edev) {
> +		/* If the destination device already has a valid MAC address, do
> +		 * nothing, it was probably set to nv by user.
> +		 */
> +		if (is_valid_ether_addr(d_edev->ethaddr))
> +			return 0;
> +	}
> +
> +	skov_imx8mp_get_src_mac(priv, s_np, mac, dst_id);
> +
> +	of_eth_register_ethaddr(d_np, mac);
> +
> +	return 0;
> +}
> +
> +/* We have following requirements for the ethernet MAC addresses:
> + * - LAN1 MAC address should be the same as the MAC address stored in t=
he FEC
> + *   slot (FEC is not used on this board).
> + * - LAN2 MAC address should be the same as the EQOS MAC address. (EQOS=
 is
> + *   the master interface for the switch on this board, LAN2 and LAN1 a=
re
> + *   external ports of this switch).
> + * - LAN2 MAC address is usually higher than LAN1 MAC address. But prod=
uction
> + *   process do not guarantee this. So, we can't calculate LAN2 MAC add=
ress
> + *   from LAN1 MAC address.
> + */
> +static void skov_imx8mp_ethernet_init(struct skov_imx8mp_priv *priv)
> +{
> +	struct device_node *root;
> +	unsigned int i;
> +	struct eth_node_info {
> +		const char *s_alias;
> +		const char *d_alias;
> +	} eth_node_info[] =3D {
> +		{ "ethernet0", "ethernet0" }, /* EQOS -> EQOS */
> +		{ "ethernet0", "ethernet2" }, /* EQOS -> LAN2 */
> +		{ "ethernet3", "ethernet1" }, /* FEC -> LAN1 */
> +	};
> +
> +	root =3D of_get_root_node();
> +
> +	for (i =3D 0; i < ARRAY_SIZE(eth_node_info); i++) {
> +		const char *s_alias =3D eth_node_info[i].s_alias;
> +		const char *d_alias =3D eth_node_info[i].d_alias;
> +		struct device_node *s_np, *d_np;
> +		int ret;
> +
> +		s_np =3D of_find_node_by_alias(root, s_alias);
> +		if (!s_np) {
> +			dev_warn(priv->dev, "Failed to find src ethernet node by alias: %s\n=
",
> +				 s_alias);
> +			continue;
> +		}
> +
> +		d_np =3D of_find_node_by_alias(root, d_alias);
> +		if (!d_np) {
> +			dev_warn(priv->dev, "Failed to find dst ethernet node by alias: %s\n=
",
> +				 d_alias);
> +			continue;
> +		}
> +
> +		ret =3D skov_imx8mp_eth_register_ethaddr(priv, d_np, s_np, i);
> +		if (ret) {
> +			dev_warn(priv->dev, "Failed to transfer MAC address from alias %s to=
 %s\n",
> +				 s_alias, d_alias);
> +			continue;
> +		}
> +	}
> +}
> +
> +static int skov_imx8mp_populate_ethaddr(void)
> +{
> +	struct skov_imx8mp_priv *priv =3D skov_imx8mp_priv;
> +
> +	skov_imx8mp_ethernet_init(priv);
> +
> +	return 0;
> +}
> +postenvironment_initcall(skov_imx8mp_populate_ethaddr);
> +
>   static int skov_imx8mp_fixup(struct device_node *root, void *data)
>   {
>   	struct device_node *chosen =3D of_create_node(root, "/chosen");
> diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
> index 3243a41697..063861427c 100644
> --- a/arch/arm/dts/imx8mp-skov.dts
> +++ b/arch/arm/dts/imx8mp-skov.dts
> @@ -31,6 +31,7 @@ aliases {
>   		ethernet0 =3D &eqos;
>   		ethernet1 =3D &lan1;
>   		ethernet2 =3D &lan2;
> +		ethernet3 =3D &fec;
>   		state =3D &state;
>   	};
>

=2D-
Regards,
Oleksij



