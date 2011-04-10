Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8opW-0008Bm-T3
	for barebox@lists.infradead.org; Sun, 10 Apr 2011 07:13:09 +0000
Received: by ewy3 with SMTP id 3so1555341ewy.36
	for <barebox@lists.infradead.org>; Sun, 10 Apr 2011 00:13:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110410040649.GA8392@game.jcrosoft.org>
References: <1302358087-9756-1-git-send-email-franck.jullien@gmail.com>
	<1302358087-9756-2-git-send-email-franck.jullien@gmail.com>
	<20110410040649.GA8392@game.jcrosoft.org>
Date: Sun, 10 Apr 2011 09:13:04 +0200
Message-ID: <BANLkTi=JnLBhDeYY_eXRtxb9b_3Z=2rS3A@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1499189355=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] [v2] Nios2: Add Altera TSE MAC driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

--===============1499189355==
Content-Type: multipart/alternative; boundary=00504502ca1cae74bb04a08b30d1

--00504502ca1cae74bb04a08b30d1
Content-Type: text/plain; charset=ISO-8859-1

Hello,

2011/4/10 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> On 16:08 Sat 09 Apr     , franck.jullien@gmail.com wrote:
> > From: Franck JULLIEN <franck.jullien@gmail.com>
> >
> > Add Altera Triple Speed Ethernet driver
> >
> > Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
> > ---
> >  drivers/net/Kconfig      |   16 ++
> >  drivers/net/Makefile     |    5 +-
> >  drivers/net/altera_tse.c |  620
> ++++++++++++++++++++++++++++++++++++++++++++++
> >  drivers/net/altera_tse.h |  313 +++++++++++++++++++++++
> >  4 files changed, 952 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/net/altera_tse.c
> >  create mode 100644 drivers/net/altera_tse.h
> >
> > diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> > index 6479417..19e35db 100644
> > --- a/drivers/net/Kconfig
> > +++ b/drivers/net/Kconfig
> > @@ -84,6 +84,22 @@ config DRIVER_NET_TAP
> >       bool "tap Ethernet driver"
> >       depends on LINUX
> >
> > +config DRIVER_NET_TSE
> > +     depends on NIOS2
> > +     bool "Altera TSE ethernet driver"
> > +     select MIIDEV
> > +     help
> > +       This option enables support for the Altera TSE MAC.
> > +
> > +config TSE_USE_DEDICATED_DESC_MEM
> > +     depends on DRIVER_NET_TSE
> > +     bool "Altera TSE uses dedicated descriptor memory"
> > +     help
> > +       This option tells the TSE driver to use an onchip memory
> > +       to store SGDMA descriptors. Descriptor memory is not
> > +       reserved with a malloc but directly mapped to the memory
> > +       address (defined in config.h)
> > +
> >  source "drivers/net/usb/Kconfig"
> >
> >  endmenu
> > diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> > index 96d3d32..f02618b 100644
> > --- a/drivers/net/Makefile
> > +++ b/drivers/net/Makefile
> > @@ -1,7 +1,7 @@
> > -obj-$(CONFIG_DRIVER_NET_CS8900)              += cs8900.o
> > +obj-$(CONFIG_DRIVER_NET_CS8900)              += cs8900.o
> >  obj-$(CONFIG_DRIVER_NET_SMC911X)     += smc911x.o
> >  obj-$(CONFIG_DRIVER_NET_SMC91111)    += smc91111.o
> > -obj-$(CONFIG_DRIVER_NET_DM9000)              += dm9000.o
> > +obj-$(CONFIG_DRIVER_NET_DM9000)              += dm9000.o
> why do you touch this two?
>
> if you want to fix the whitespace please do it in an other commit
>

OK, I'll correct this.



> >  obj-$(CONFIG_DRIVER_NET_NETX)                += netx_eth.o
> >  obj-$(CONFIG_DRIVER_NET_AT91_ETHER)  += at91_ether.o
> >  obj-$(CONFIG_DRIVER_NET_MPC5200)     += fec_mpc5200.o
> > @@ -11,3 +11,4 @@ obj-$(CONFIG_DRIVER_NET_MACB)               += macb.o
> >  obj-$(CONFIG_DRIVER_NET_TAP)         += tap.o
> >  obj-$(CONFIG_MIIDEV)                 += miidev.o
> >  obj-$(CONFIG_NET_USB)                        += usb/
> > +obj-$(CONFIG_DRIVER_NET_TSE)         += altera_tse.o
> > diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
> > new file mode 100644
> > index 0000000..2687377
> > --- /dev/null
> > +
> > +static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
> > +{
> > +     /* There is no eeprom */
> so return the content of the register no?
>

Well, the register is reseted to 0 when the MAC starts so there is no
Ethernet address
to get.


> > +     return -1;
> > +}
> > +
>
> > +static int tse_eth_send(struct eth_device *edev, void *packet, int
> length)
> > +{
> > +
> > +     struct altera_tse_priv *priv = edev->priv;
> > +     struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> > +     struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor
> *)priv->tx_desc;
> > +
> > +     struct alt_sgdma_descriptor *tx_desc_cur = (struct
> alt_sgdma_descriptor *)&tx_desc[0];
> > +
> > +     flush_dcache_range((uint32_t)packet, (uint32_t)packet + length);
> > +     alt_sgdma_construct_descriptor_burst(
> > +             (struct alt_sgdma_descriptor *)&tx_desc[0],
> > +             (struct alt_sgdma_descriptor *)&tx_desc[1],
> > +             (uint32_t *)packet,  /* read addr */
> > +             (uint32_t *)0,       /*           */
> > +             length,              /* length or EOP ,will change for each
> tx */
> > +             0x1,                 /* gen eop */
> > +             0x0,                 /* read fixed */
> > +             0x1,                 /* write fixed or sop */
> > +             0x0,                 /* read burst */
> > +             0x0,                 /* write burst */
> > +             0x0                  /* channel */
> please use tab for indent I see other in the patch please check
>

I use tab for indent, spaces for alignment. I checked the patch with
checkpatch and it
didn't find errors.....


> > +             );
> > +
> > +     alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);
> > +
> > +     return 0;;
> > +}
> > +
> > +static void tse_eth_halt(struct eth_device *edev)
> > +{
> > +     struct altera_tse_priv *priv = edev->priv;
> > +     struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
> > +     struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> > +
> > +     writel(0, &rx_sgdma->control); /* Stop the controller and reset
> settings */
> > +     writel(0, &tx_sgdma->control); /* Stop the controller and reset
> settings */
> > +}
> > +
> > +static int tse_eth_rx(struct eth_device *edev)
> > +{
> > +     uint16_t packet_length = 0;
> > +
> > +     struct altera_tse_priv *priv = edev->priv;
> > +     struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor
> *)priv->rx_desc;
> > +     struct alt_sgdma_descriptor *rx_desc_cur = &rx_desc[0];
> > +     struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
> > +
> > +     if (rx_desc_cur->descriptor_status &
> > +             ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK) {
> > +
> > +             packet_length = rx_desc->actual_bytes_transferred;
> > +             net_receive(NetRxPackets[0], packet_length);
> > +
> > +             /* Clear Run */
> > +             rx_sgdma->control = (rx_sgdma->control &
> (~ALT_SGDMA_CONTROL_RUN_MSK));
> > +
> > +             /* start descriptor again */
> > +             flush_dcache_range((uint32_t)(NetRxPackets[0]),
> (uint32_t)(NetRxPackets[0]) + PKTSIZE);
> > +             alt_sgdma_construct_descriptor_burst(
> > +                     (struct alt_sgdma_descriptor *)&rx_desc[0],
> > +                     (struct alt_sgdma_descriptor *)&rx_desc[1],
> > +                     (uint32_t)0x0,               /* read addr */
> > +                     (uint32_t *)NetRxPackets[0], /*           */
> > +                     0x0,                         /* length or EOP */
> > +                     0x0,                         /* gen eop */
> > +                     0x0,                         /* read fixed */
> > +                     0x0,                         /* write fixed or sop
> */
> > +                     0x0,                         /* read burst */
> > +                     0x0,                         /* write burst */
> > +                     0x0                          /* channel */
> please use tab for indent
> > +             );
> > +
> > +             /* setup the sgdma */
> > +             alt_sgdma_do_async_transfer(priv->sgdma_rx, &rx_desc[0]);
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static char *get_phy_name(uint32_t phy_ID)
> > +{
> > +     uint8_t i = 0;
> > +
> > +     while (phy_name_table[i].phy_ID != 0) {
> > +             if (phy_name_table[i].phy_ID == phy_ID)
> > +                     return phy_name_table[i].name;
> > +             i++;
> > +     }
> > +
> > +     return "unknown";
> > +}
> why this?
> > +
> > +static int check_phy_address(struct eth_device *edev)
> > +{
> > +     struct altera_tse_priv *priv = edev->priv;
> > +     uint8_t mii_bus_scan = 0;
> > +     uint8_t current_mii_address = 1;
> > +     uint32_t phy_reg;
> > +     uint32_t phy_ID;
> > +
> > +     if ((priv->miidev)->address < 0)
> > +             mii_bus_scan = 1;
> > +     else
> > +             current_mii_address = (priv->miidev)->address;
> > +
> > +     do {
> > +             /* Grab the bits from PHYIR1, and put them in the upper
> half */
> > +             phy_reg = tse_phy_read(priv->miidev, current_mii_address,
> MII_PHYSID1);
> > +             phy_ID = (phy_reg & 0xffff) << 16;
> > +
> > +             /* Grab the bits from PHYIR2, and put them in the lower
> half */
> > +             phy_reg = tse_phy_read(priv->miidev, current_mii_address,
> MII_PHYSID2);
> > +             phy_ID |= (phy_reg & 0xffff);
> > +
> > +             if (phy_ID != 0xffffffff) {
> > +                     printf("PHY (%s) found at address %d\n",
> get_phy_name(phy_ID), current_mii_address);
> > +                     (priv->miidev)->address = current_mii_address;
> > +                     return 0;
> > +             }
> > +
> > +             current_mii_address++;
> > +
> > +     } while (current_mii_address < 32 && mii_bus_scan);
> > +
> > +     return -1;
> > +}
> > +
> why this?
>

Because sometimes (often ?), hardware doesn't run first time. So I like to
have some information on MII bus running correctly....One day I had a PHY
getting the address 1 and sometimes this f***ing PHY got 31 and this
kind of auto scan helped me to immediately find the problem......

I could remove those function if it is a problem....


>
> Best Regards,
> J.
>

Regards,
Franck.

--00504502ca1cae74bb04a08b30d1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br><br><div class=3D"gmail_quote">2011/4/10 Jean-Christophe PLAGNIOL=
-VILLARD <span dir=3D"ltr">&lt;<a href=3D"mailto:plagnioj@jcrosoft.com">pla=
gnioj@jcrosoft.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div><div></div><div class=3D"h5">On 16:08 Sat 09 Apr =A0 =A0 , <a href=3D"=
mailto:franck.jullien@gmail.com">franck.jullien@gmail.com</a> wrote:<br>
&gt; From: Franck JULLIEN &lt;<a href=3D"mailto:franck.jullien@gmail.com">f=
ranck.jullien@gmail.com</a>&gt;<br>
&gt;<br>
&gt; Add Altera Triple Speed Ethernet driver<br>
&gt;<br>
&gt; Signed-off-by: Franck JULLIEN &lt;<a href=3D"mailto:franck.jullien@gma=
il.com">franck.jullien@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =A0drivers/net/Kconfig =A0 =A0 =A0| =A0 16 ++<br>
&gt; =A0drivers/net/Makefile =A0 =A0 | =A0 =A05 +-<br>
&gt; =A0drivers/net/altera_tse.c | =A0620 +++++++++++++++++++++++++++++++++=
+++++++++++++<br>
&gt; =A0drivers/net/altera_tse.h | =A0313 +++++++++++++++++++++++<br>
&gt; =A04 files changed, 952 insertions(+), 2 deletions(-)<br>
&gt; =A0create mode 100644 drivers/net/altera_tse.c<br>
&gt; =A0create mode 100644 drivers/net/altera_tse.h<br>
&gt;<br>
&gt; diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig<br>
&gt; index 6479417..19e35db 100644<br>
&gt; --- a/drivers/net/Kconfig<br>
&gt; +++ b/drivers/net/Kconfig<br>
&gt; @@ -84,6 +84,22 @@ config DRIVER_NET_TAP<br>
&gt; =A0 =A0 =A0 bool &quot;tap Ethernet driver&quot;<br>
&gt; =A0 =A0 =A0 depends on LINUX<br>
&gt;<br>
&gt; +config DRIVER_NET_TSE<br>
&gt; + =A0 =A0 depends on NIOS2<br>
&gt; + =A0 =A0 bool &quot;Altera TSE ethernet driver&quot;<br>
&gt; + =A0 =A0 select MIIDEV<br>
&gt; + =A0 =A0 help<br>
&gt; + =A0 =A0 =A0 This option enables support for the Altera TSE MAC.<br>
&gt; +<br>
&gt; +config TSE_USE_DEDICATED_DESC_MEM<br>
&gt; + =A0 =A0 depends on DRIVER_NET_TSE<br>
&gt; + =A0 =A0 bool &quot;Altera TSE uses dedicated descriptor memory&quot;=
<br>
&gt; + =A0 =A0 help<br>
&gt; + =A0 =A0 =A0 This option tells the TSE driver to use an onchip memory=
<br>
&gt; + =A0 =A0 =A0 to store SGDMA descriptors. Descriptor memory is not<br>
&gt; + =A0 =A0 =A0 reserved with a malloc but directly mapped to the memory=
<br>
&gt; + =A0 =A0 =A0 address (defined in config.h)<br>
&gt; +<br>
&gt; =A0source &quot;drivers/net/usb/Kconfig&quot;<br>
&gt;<br>
&gt; =A0endmenu<br>
&gt; diff --git a/drivers/net/Makefile b/drivers/net/Makefile<br>
&gt; index 96d3d32..f02618b 100644<br>
&gt; --- a/drivers/net/Makefile<br>
&gt; +++ b/drivers/net/Makefile<br>
&gt; @@ -1,7 +1,7 @@<br>
&gt; -obj-$(CONFIG_DRIVER_NET_CS8900) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D cs890=
0.o<br>
&gt; +obj-$(CONFIG_DRIVER_NET_CS8900) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D cs890=
0.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_NET_SMC911X) =A0 =A0 +=3D smc911x.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_NET_SMC91111) =A0 =A0+=3D smc91111.o<br>
&gt; -obj-$(CONFIG_DRIVER_NET_DM9000) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D dm900=
0.o<br>
&gt; +obj-$(CONFIG_DRIVER_NET_DM9000) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D dm900=
0.o<br>
</div></div>why do you touch this two?<br>
<br>
if you want to fix the whitespace please do it in an other commit<br></bloc=
kquote><div><br></div><div>OK, I&#39;ll correct this.</div><div><br></div><=
div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex;">

<div class=3D"im">&gt; =A0obj-$(CONFIG_DRIVER_NET_NETX) =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0+=3D netx_eth.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_NET_AT91_ETHER) =A0+=3D at91_ether.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_NET_MPC5200) =A0 =A0 +=3D fec_mpc5200.o<br>
&gt; @@ -11,3 +11,4 @@ obj-$(CONFIG_DRIVER_NET_MACB) =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 +=3D macb.o<br>
&gt; =A0obj-$(CONFIG_DRIVER_NET_TAP) =A0 =A0 =A0 =A0 +=3D tap.o<br>
&gt; =A0obj-$(CONFIG_MIIDEV) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D miidev.o<=
br>
&gt; =A0obj-$(CONFIG_NET_USB) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0+=3D usb/<br>
&gt; +obj-$(CONFIG_DRIVER_NET_TSE) =A0 =A0 =A0 =A0 +=3D altera_tse.o<br>
&gt; diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c<br>
&gt; new file mode 100644<br>
&gt; index 0000000..2687377<br>
&gt; --- /dev/null<br>
&gt; +<br>
</div><div class=3D"im">&gt; +static int tse_get_ethaddr(struct eth_device =
*edev, unsigned char *m)<br>
&gt; +{<br>
&gt; + =A0 =A0 /* There is no eeprom */<br>
</div>so return the content of the register no?<br></blockquote><div><br></=
div><div>Well, the register is reseted to 0 when the MAC starts so there is=
 no Ethernet address</div><div>to get.</div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex;">

&gt; + =A0 =A0 return -1;<br>
&gt; +}<br>
&gt; +<br>
<div class=3D"im"><br>
&gt; +static int tse_eth_send(struct eth_device *edev, void *packet, int le=
ngth)<br>
&gt; +{<br>
&gt; +<br>
&gt; + =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
&gt; + =A0 =A0 struct alt_sgdma_registers *tx_sgdma =3D priv-&gt;sgdma_tx;<=
br>
&gt; + =A0 =A0 struct alt_sgdma_descriptor *tx_desc =3D (struct alt_sgdma_d=
escriptor *)priv-&gt;tx_desc;<br>
&gt; +<br>
&gt; + =A0 =A0 struct alt_sgdma_descriptor *tx_desc_cur =3D (struct alt_sgd=
ma_descriptor *)&amp;tx_desc[0];<br>
&gt; +<br>
&gt; + =A0 =A0 flush_dcache_range((uint32_t)packet, (uint32_t)packet + leng=
th);<br>
&gt; + =A0 =A0 alt_sgdma_construct_descriptor_burst(<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;tx_desc[=
0],<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;tx_desc[=
1],<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)packet, =A0/* read addr */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)0, =A0 =A0 =A0 /* =A0 =A0 =A0 =
=A0 =A0 */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 length, =A0 =A0 =A0 =A0 =A0 =A0 =A0/* length=
 or EOP ,will change for each tx */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* gen =
eop */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* read=
 fixed */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* writ=
e fixed or sop */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* read=
 burst */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* writ=
e burst */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 0x0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* ch=
annel */<br>
</div>please use tab for indent I see other in the patch please check<br></=
blockquote><div><br></div><div>I use tab for indent, spaces for alignment. =
I checked the patch with checkpatch and it</div><div>didn&#39;t find errors=
.....</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex;">
<div><div></div><div class=3D"h5">&gt; + =A0 =A0 =A0 =A0 =A0 =A0 );<br>
&gt; +<br>
&gt; + =A0 =A0 alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);<br>
&gt; +<br>
&gt; + =A0 =A0 return 0;;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static void tse_eth_halt(struct eth_device *edev)<br>
&gt; +{<br>
&gt; + =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
&gt; + =A0 =A0 struct alt_sgdma_registers *rx_sgdma =3D priv-&gt;sgdma_rx;<=
br>
&gt; + =A0 =A0 struct alt_sgdma_registers *tx_sgdma =3D priv-&gt;sgdma_tx;<=
br>
&gt; +<br>
&gt; + =A0 =A0 writel(0, &amp;rx_sgdma-&gt;control); /* Stop the controller=
 and reset settings */<br>
&gt; + =A0 =A0 writel(0, &amp;tx_sgdma-&gt;control); /* Stop the controller=
 and reset settings */<br>
&gt; +}<br>
&gt; +<br>
&gt; +static int tse_eth_rx(struct eth_device *edev)<br>
&gt; +{<br>
&gt; + =A0 =A0 uint16_t packet_length =3D 0;<br>
&gt; +<br>
&gt; + =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
&gt; + =A0 =A0 struct alt_sgdma_descriptor *rx_desc =3D (struct alt_sgdma_d=
escriptor *)priv-&gt;rx_desc;<br>
&gt; + =A0 =A0 struct alt_sgdma_descriptor *rx_desc_cur =3D &amp;rx_desc[0]=
;<br>
&gt; + =A0 =A0 struct alt_sgdma_registers *rx_sgdma =3D priv-&gt;sgdma_rx;<=
br>
&gt; +<br>
&gt; + =A0 =A0 if (rx_desc_cur-&gt;descriptor_status &amp;<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EO=
P_MSK) {<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 packet_length =3D rx_desc-&gt;actual_bytes_t=
ransferred;<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 net_receive(NetRxPackets[0], packet_length);=
<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 /* Clear Run */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 rx_sgdma-&gt;control =3D (rx_sgdma-&gt;contr=
ol &amp; (~ALT_SGDMA_CONTROL_RUN_MSK));<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 /* start descriptor again */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 flush_dcache_range((uint32_t)(NetRxPackets[0=
]), (uint32_t)(NetRxPackets[0]) + PKTSIZE);<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 alt_sgdma_construct_descriptor_burst(<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor=
 *)&amp;rx_desc[0],<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor=
 *)&amp;rx_desc[1],<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t)0x0, =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 /* read addr */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)NetRxPackets[0],=
 /* =A0 =A0 =A0 =A0 =A0 */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 /* length or EOP */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 /* gen eop */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 /* read fixed */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 /* write fixed or sop */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 /* read burst */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 /* write burst */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0/* channel */<br>
</div></div>please use tab for indent<br>
<div class=3D"im">&gt; + =A0 =A0 =A0 =A0 =A0 =A0 );<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 /* setup the sgdma */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 alt_sgdma_do_async_transfer(priv-&gt;sgdma_r=
x, &amp;rx_desc[0]);<br>
&gt; + =A0 =A0 }<br>
&gt; +<br>
&gt; + =A0 =A0 return 0;<br>
&gt; +}<br>
&gt; +<br>
&gt; +static char *get_phy_name(uint32_t phy_ID)<br>
&gt; +{<br>
&gt; + =A0 =A0 uint8_t i =3D 0;<br>
&gt; +<br>
&gt; + =A0 =A0 while (phy_name_table[i].phy_ID !=3D 0) {<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 if (phy_name_table[i].phy_ID =3D=3D phy_ID)<=
br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return phy_name_table[i].nam=
e;<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 i++;<br>
&gt; + =A0 =A0 }<br>
&gt; +<br>
&gt; + =A0 =A0 return &quot;unknown&quot;;<br>
&gt; +}<br>
</div>why this?<br>
<div class=3D"im">&gt; +<br>
&gt; +static int check_phy_address(struct eth_device *edev)<br>
&gt; +{<br>
&gt; + =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
&gt; + =A0 =A0 uint8_t mii_bus_scan =3D 0;<br>
&gt; + =A0 =A0 uint8_t current_mii_address =3D 1;<br>
&gt; + =A0 =A0 uint32_t phy_reg;<br>
&gt; + =A0 =A0 uint32_t phy_ID;<br>
&gt; +<br>
&gt; + =A0 =A0 if ((priv-&gt;miidev)-&gt;address &lt; 0)<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 mii_bus_scan =3D 1;<br>
&gt; + =A0 =A0 else<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 current_mii_address =3D (priv-&gt;miidev)-&g=
t;address;<br>
&gt; +<br>
&gt; + =A0 =A0 do {<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 /* Grab the bits from PHYIR1, and put them i=
n the upper half */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 phy_reg =3D tse_phy_read(priv-&gt;miidev, cu=
rrent_mii_address, MII_PHYSID1);<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 phy_ID =3D (phy_reg &amp; 0xffff) &lt;&lt; 1=
6;<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 /* Grab the bits from PHYIR2, and put them i=
n the lower half */<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 phy_reg =3D tse_phy_read(priv-&gt;miidev, cu=
rrent_mii_address, MII_PHYSID2);<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 phy_ID |=3D (phy_reg &amp; 0xffff);<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 if (phy_ID !=3D 0xffffffff) {<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;PHY (%s) found =
at address %d\n&quot;, get_phy_name(phy_ID), current_mii_address);<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (priv-&gt;miidev)-&gt;addres=
s =3D current_mii_address;<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 0;<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 }<br>
&gt; +<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 current_mii_address++;<br>
&gt; +<br>
&gt; + =A0 =A0 } while (current_mii_address &lt; 32 &amp;&amp; mii_bus_scan=
);<br>
&gt; +<br>
&gt; + =A0 =A0 return -1;<br>
&gt; +}<br>
&gt; +<br>
</div>why this?<br></blockquote><div><br></div><div>Because sometimes (ofte=
n ?), hardware doesn&#39;t run first time. So I like to</div><div>have some=
 information on MII bus running correctly....One day I had a PHY</div>
<div>getting the address 1 and sometimes this f***ing PHY got 31 and this</=
div><div>kind of auto scan helped me to=A0immediately find the problem.....=
.</div><div><br></div><div>I could remove those function if it is a problem=
....=A0</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex;">
<br>
Best Regards,<br>
<font color=3D"#888888">J.<br>
</font></blockquote></div><br><div>Regards,</div><div>Franck.</div>

--00504502ca1cae74bb04a08b30d1--


--===============1499189355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1499189355==--
