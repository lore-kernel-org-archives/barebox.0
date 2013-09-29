Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQG9E-0004S7-Fc
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 12:30:53 +0000
Received: by mail-ee0-f42.google.com with SMTP id b45so2109097eek.29
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 05:30:28 -0700 (PDT)
Message-ID: <1380457825.30104.8.camel@lolumad>
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Sun, 29 Sep 2013 14:30:25 +0200
In-Reply-To: <20130927080557.GK30088@pengutronix.de>
References: <1380227429.10759.1.camel@lolumad>
 <20130927080557.GK30088@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: Wrong barebox_image_size value
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha;
You are right; The problem is I did not use the defconfig, thus building
relocatable binary. After using freescale_mx53_smd_defconfig, proper
size value is stored in the image.
Thank you for the help;

Rostislav Lisovy


On Fri, 2013-09-27 at 10:05 +0200, Sascha Hauer wrote: 
> Hi Rostislav,
> 
> On Thu, Sep 26, 2013 at 10:30:29PM +0200, Rostislav Lisovy wrote:
> > Dear barebox developers and users;
> > I am compiling barebox for freescale-imx53-smd board. My issue is,
> > that the image does not contain the correct size record.
> > The "bootloader size" needed by the flashing tool is initialized in
> > freescale-mx53-smd/flash_header.c, in structure flash_header,
> > field .boot_data.size.
> > Formerly there used to be a hardcoded value 0x40000, nowadays we use
> > DCD_BAREBOX_SIZE which expands into (barebox_image_size + 4095), where
> > "barebox_image_size" has real size computed by the linker.
> > When the value .boot_data.size is filled by hand (as 0x40000), correct
> > value is stored in the barebox image.
> > Proof: hexdump -s 0x24 -n 4 barebox-flash-image
> > 0000024 0000 0004
> > 
> > however if .boot_data.size = DCD_BAREBOX_SIZE,
> > $ hexdump -s 0x24 -n 4 barebox-flash-image
> > 0000024 0fff 0000
> > where this 0xfff is the "+4095" added to round the value. (I am pretty
> > sure the offset into the image used by hexdump is correct).
> 
> Probably you are not building the defconfig, right? Compiling the
> defconfig gives me the correct value and it's at offset 0x424 in the
> image, not at 0x24.
> Maybe you are compiling a relocatable image as Jean-Christophe
> mentioned, then you would see this problem.
> 
> > 
> > The barebox version I am using most recent git, branch master.
> > The compiler (maybe here is the point of failure) is
> > arm-cortex_a8-linux-gnueabi-gcc (crosstool-NG hg+default-86a8d1d467c8)
> > 4.4.6.
> 
> That should be ok.
> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
