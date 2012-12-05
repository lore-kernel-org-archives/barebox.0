Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgEV8-0005JL-7t
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 12:54:58 +0000
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
 ([99.253.156.71]:51640 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1TgEV4-0002Ao-FI
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 07:54:54 -0500
Date: Wed, 5 Dec 2012 07:54:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212050751380.5832@oneiric>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: what is the rationale for funny "0x100" offset for OMAP4 GPIO
 addresses?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  i was going to submit a patch to replace magic constants for OMAP4
with more meaningful names but i ran into an oddity.  here's
omap4-silicon.h:

#define OMAP44XX_L4_WKUP_BASE           0x4A300000
#define OMAP44XX_L4_PER_BASE            0x48000000

and here's part of an old posting to the linux-omap mailing list:

+/* GPIO controller*/
+#define OMAP44XX_GPIO1_BASE             (L4_WK_44XX_BASE  + 0x10000)
+#define OMAP44XX_GPIO2_BASE             (L4_PER_44XX_BASE + 0x55000)
+#define OMAP44XX_GPIO3_BASE             (L4_PER_44XX_BASE + 0x57000)
+#define OMAP44XX_GPIO4_BASE             (L4_PER_44XX_BASE + 0x59000)
+#define OMAP44XX_GPIO5_BASE             (L4_PER_44XX_BASE + 0x5B000)
+#define OMAP44XX_GPIO6_BASE             (L4_PER_44XX_BASE + 0x5D000)

but here's the tail end of omap4-generic.c:

static int omap4_gpio_init(void)
{
        add_generic_device("omap-gpio", 0, NULL, 0x4a310100,
                                0xf00, IORESOURCE_MEM, NULL);
        add_generic_device("omap-gpio", 1, NULL, 0x48055100,
                                0xf00, IORESOURCE_MEM, NULL);
        add_generic_device("omap-gpio", 2, NULL, 0x48057100,
                                0xf00, IORESOURCE_MEM, NULL);
        add_generic_device("omap-gpio", 3, NULL, 0x48059100,
                                0xf00, IORESOURCE_MEM, NULL);
        add_generic_device("omap-gpio", 4, NULL, 0x4805b100,
                                0xf00, IORESOURCE_MEM, NULL);
        add_generic_device("omap-gpio", 5, NULL, 0x4805d100,
                                0xf00, IORESOURCE_MEM, NULL);

        return 0;
}

  as you can see, the numbers don't add up exactly -- the constants in
that final file are all 0x100 larger than a simple addition.  anyone
know where that comes from?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
