Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqhOo-0004Z1-HB
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:15:35 +0000
In-Reply-To: <20120716085418.GG30009@pengutronix.de>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
MIME-Version: 1.0
Message-ID: <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 16 Jul 2012 11:15:24 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6580074526712840026=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: barebox image size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============6580074526712840026==
Content-Type: multipart/alternative; boundary="=_alternative 0032D943C1257A3D_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 0032D943C1257A3D_=
Content-Type: text/plain; charset="US-ASCII"

i am using:

static inline struct device_d *imx53_add_nand(struct 
imx_nand_platform_data *pdata)
{
        struct resource res[] = {
                {
                        .start = MX53_NFC_BASE_ADDR,
                        .size = SZ_4K,
                        .flags = IORESOURCE_MEM,
                }, {
                        .start = MX53_NFC_AXI_BASE_ADDR,
                        .size = SZ_4K,
                        .flags = IORESOURCE_MEM,
                },
        };
        struct device_d *dev = xzalloc(sizeof(*dev));

        dev->resource = xzalloc(sizeof(struct resource) * 
ARRAY_SIZE(res));
        memcpy(dev->resource, res, sizeof(struct resource) * 
ARRAY_SIZE(res));
        dev->num_resources = ARRAY_SIZE(res);
        strcpy(dev->name, "imx_nand");
        dev->id = -1;
        dev->platform_data = pdata;

        register_device(dev);

        return dev;
}

with imx_nand_platform_data parameter:
static struct imx_nand_platform_data tx53_nand_pdata =
{
    .width      = 1,
    .hw_ecc     = 1,
    .flash_bbt  = 1,
};

imx_nand_load_image() is never used in my imx53 board init code.. is this 
the fault?

- christian



Von:    Sascha Hauer <s.hauer@pengutronix.de>
An:     christian.buettner@rafi.de, 
Kopie:  barebox@lists.infradead.org
Datum:  16.07.2012 10:54
Betreff:        Re: barebox image size



On Mon, Jul 16, 2012 at 10:37:41AM +0200, christian.buettner@rafi.de 
wrote:
> hi,
> 
> we need to implement a lot of features into the barebox. Finally the 
size 
> of the image will be bigger than the standard max of 256K.
> When i flash an image, bigger than 256K to nand, barebox does not boot 
> anymore - if i reduce it to 256K or smaller, everthing works fine.
> 
> What do i have to do to use a bigger barebox image size?

Just a guess:

You are using imx_nand_load_image() with a fixed size of 256k. grep for
this function in the current tree and see how the correct image size is
calculated.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=_alternative 0032D943C1257A3D_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">i am using:</font>
<br>
<br><font size=2 color=#820040 face="Sans"><b>static</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>inline</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
device_d *<b>imx53_add_nand</b>(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
imx_nand_platform_data *pdata)</font>
<br><font size=2 face="Sans">{</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
resource res[] = {</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; {</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">start</font><font size=2 face="Sans">
= <u>MX53_NFC_BASE_ADDR</u>,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">size</font><font size=2 face="Sans">
= SZ_4K,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">flags</font><font size=2 face="Sans">
= IORESOURCE_MEM,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; }, {</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">start</font><font size=2 face="Sans">
= <u>MX53_NFC_AXI_BASE_ADDR</u>,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">size</font><font size=2 face="Sans">
= SZ_4K,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">flags</font><font size=2 face="Sans">
= IORESOURCE_MEM,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; },</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; };</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
device_d *dev = xzalloc(</font><font size=2 color=#820040 face="Sans"><b>sizeof</b></font><font size=2 face="Sans">(*dev));</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; dev-&gt;</font><font size=2 color=#0021bf face="Sans">resource</font><font size=2 face="Sans">
= xzalloc(</font><font size=2 color=#820040 face="Sans"><b>sizeof</b></font><font size=2 face="Sans">(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
resource) * ARRAY_SIZE(res));</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; memcpy(dev-&gt;</font><font size=2 color=#0021bf face="Sans">resource</font><font size=2 face="Sans">,
res, </font><font size=2 color=#820040 face="Sans"><b>sizeof</b></font><font size=2 face="Sans">(</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
resource) * ARRAY_SIZE(res));</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; dev-&gt;</font><font size=2 color=#0021bf face="Sans">num_resources</font><font size=2 face="Sans">
= ARRAY_SIZE(res);</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; strcpy(dev-&gt;</font><font size=2 color=#0021bf face="Sans">name</font><font size=2 face="Sans">,
</font><font size=2 color=#4200ff face="Sans">&quot;imx_nand&quot;</font><font size=2 face="Sans">);</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; dev-&gt;</font><font size=2 color=#0021bf face="Sans">id</font><font size=2 face="Sans">
= -1;</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; dev-&gt;</font><font size=2 color=#0021bf face="Sans">platform_data</font><font size=2 face="Sans">
= pdata;</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; register_device(dev);</font>
<br>
<br><font size=2 face="Sans">&nbsp; &nbsp; &nbsp; &nbsp; </font><font size=2 color=#820040 face="Sans"><b>return</b></font><font size=2 face="Sans">
dev;</font>
<br><font size=2 face="Sans">}</font>
<br>
<br><font size=2 face="Sans">with imx_nand_platform_data parameter:</font>
<br><font size=2 color=#820040 face="Sans"><b>static</b></font><font size=2 face="Sans">
</font><font size=2 color=#820040 face="Sans"><b>struct</b></font><font size=2 face="Sans">
imx_nand_platform_data tx53_nand_pdata =</font>
<br><font size=2 face="Sans">{</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">width</font><font size=2 face="Sans">
&nbsp; &nbsp; &nbsp;= 1,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">hw_ecc</font><font size=2 face="Sans">
&nbsp; &nbsp; = 1,</font>
<br><font size=2 face="Sans">&nbsp; &nbsp; .</font><font size=2 color=#0021bf face="Sans">flash_bbt</font><font size=2 face="Sans">
&nbsp;= 1,</font>
<br><font size=2 face="Sans">};</font>
<br>
<br><tt><font size=2>imx_nand_load_image</font></tt><font size=2 face="Sans">()
is never used in my imx53 board init code.. is this the fault?</font>
<br>
<br><font size=2 face="Sans">- christian</font>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Sascha Hauer &lt;s.hauer@pengutronix.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">christian.buettner@rafi.de,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">barebox@lists.infradead.org</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">16.07.2012 10:54</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: barebox
image size</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On Mon, Jul 16, 2012 at 10:37:41AM +0200, christian.buettner@rafi.de
wrote:<br>
&gt; hi,<br>
&gt; <br>
&gt; we need to implement a lot of features into the barebox. Finally the
size <br>
&gt; of the image will be bigger than the standard max of 256K.<br>
&gt; When i flash an image, bigger than 256K to nand, barebox does not
boot <br>
&gt; anymore - if i reduce it to 256K or smaller, everthing works fine.<br>
&gt; <br>
&gt; What do i have to do to use a bigger barebox image size?<br>
<br>
Just a guess:<br>
<br>
You are using imx_nand_load_image() with a fixed size of 256k. grep for<br>
this function in the current tree and see how the correct image size is<br>
calculated.<br>
<br>
Sascha<br>
<br>
<br>
-- <br>
Pengutronix e.K. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |<br>
Industrial Linux Solutions &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; | </font></tt><a href=http://www.pengutronix.de/><tt><font size=2>http://www.pengutronix.de/</font></tt></a><tt><font size=2>
&nbsp;|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 &nbsp;
&nbsp;|<br>
Amtsgericht Hildesheim, HRA 2686 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | Fax:
&nbsp; +49-5121-206917-5555 |<br>
</font></tt>
<br>
--=_alternative 0032D943C1257A3D_=--


--===============6580074526712840026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6580074526712840026==--
