Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TElmw-0002IX-9y
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 18:47:51 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 974DA10081A5
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 20:53:38 +0200 (CEST)
Date: Thu, 20 Sep 2012 20:45:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120920184515.GJ26553@game.jcrosoft.org>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] devicetree probe support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:06 Wed 12 Sep     , Sascha Hauer wrote:
> Hi All,
> 
> The following patch series adds support for probing barebox from
> devicetree.
> 
> Most of the of helper code is taken directly from the Linux Kernel,
> only little glue code is needed to populate the barebox devicetree
> from a dtb.
> 
> Currently the dtb can be probed with 'oftree -p <dtb>'. After calling
> this command the devices found in the dtb are probed. Devices which
> were present before are not probed again, instead the corresponding
> device nodes are attached to the barebox devices.
> 
> Further directions could be that barebox takes the dtb directly from
> a first stage loader, so a second stage barebox could be started just
> like a Linux Kernel. I have some experimental code for that. Another
> possibility would be to compile a dtb into barebox, but this is not
> done yet.
> 
> This series contains support for the basic probing, GPIO, SPI and
> several i.MX devices. The devicetree probe support nearly compiles
> away if disabled and takes about 6k in an uncompressed image when
> enabled.
> 
> Here is an example session:
> 
> barebox@Phytec phyCORE-i.MX27:/ oftree -p mnt/tftp/sha-oftree-pcm038
> barebox@Phytec phyCORE-i.MX27:/ devinfo 1000c000.serial
> resources:
> num   : 0
> start : 0x1000c000
> size  : 0x00001000
> driver: imx_serial
> 
> no info available for 1000c000.serial
> no parameters available
> 
> device node: /soc/aipi@10000000/serial@1000c000
> serial@1000c000 {
>         compatible: "fsl,imx27-uart", "fsl,imx21-uart"
>         reg: <0x1000c000 0x1000>
>         interrupts: <0x12>
>         status: "okay"
>         fsl,uart-has-rtscts:
> };
this break the fb support as those framework register device
whith resource but that may not init as the start of the ressource is
screen_base which could be 0 as no mode is selected

we really need to finish to clean the bus before applying this one

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
