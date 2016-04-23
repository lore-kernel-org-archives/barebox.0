Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1au6H8-0004uX-19
 for barebox@lists.infradead.org; Sat, 23 Apr 2016 22:43:43 +0000
Received: by mail-io0-x232.google.com with SMTP id 2so151879807ioy.1
 for <barebox@lists.infradead.org>; Sat, 23 Apr 2016 15:43:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOMZO5ADNbiVyOxvrqJyOWUv4NpoXDi4tqQ3kXBqxbmPqHQtMA@mail.gmail.com>
References: <CAOMZO5ADNbiVyOxvrqJyOWUv4NpoXDi4tqQ3kXBqxbmPqHQtMA@mail.gmail.com>
Date: Sat, 23 Apr 2016 19:43:21 -0300
Message-ID: <CAOMZO5Aqy-vhiWtK15aLBxWZuT-P62tLqFqC5GsHN0fStOZZOg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mx6qsabresd: Cannot boot after 'saveenv'
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

On Sat, Apr 23, 2016 at 5:02 PM, Fabio Estevam <festevam@gmail.com> wrote:
> Hi,
>
> After running the 'saveenv' command on a mx6qsabresd board, I can no
> longer boot Barebox:

I managed to fix this by doing:

--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -34,8 +34,8 @@
                reg = <0x0 0x80000>;
        };

-       environment_usdhc3: partition@1 {
+       environment_usdhc3: partition@c0000 {
                label = "barebox-environment";
-               reg = <0x80000 0x80000>;
+               reg = <0xc0000 0x80000>;
        };
 };

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
