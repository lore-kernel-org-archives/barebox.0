Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQG5P-0004PE-H0
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 12:26:56 +0000
Received: by mail-ee0-f46.google.com with SMTP id c13so2084379eek.5
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 05:26:32 -0700 (PDT)
Message-ID: <1380457589.30104.5.camel@lolumad>
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Sun, 29 Sep 2013 14:26:29 +0200
In-Reply-To: <20130927065434.GA32444@ns203013.ovh.net>
References: <1380227429.10759.1.camel@lolumad>
 <20130927065434.GA32444@ns203013.ovh.net>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Thank you for your help;
The problem is really the relocatable binary.
I did not use freescale_mx53_smd_defconfig because I wanted to do it
"may way" (which is wrong in this case).
If I unset config options RELOCATABLE and PBL_RELOCATABLE (or unset
PBL_IMAGE), the proper size value is written to the image.

Best regards;
Rostislav Lisovy


On Fri, 2013-09-27 at 08:54 +0200, Jean-Christophe PLAGNIOL-VILLARD
wrote: 
> On 22:30 Thu 26 Sep     , Rostislav Lisovy wrote:
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
> > 
> > The barebox version I am using most recent git, branch master.
> > The compiler (maybe here is the point of failure) is
> > arm-cortex_a8-linux-gnueabi-gcc (crosstool-NG hg+default-86a8d1d467c8)
> > 4.4.6.
> 
> do you compile a relocation binary?
> 
> if yes the barebox size is 0 for the linker script
> 
> I send a patch for the -next to start to fix the issue but I think we need
> other fixup
> 
> Best Regards,
> J.
> > 
> > I will appreciate any help;
> > Rostislav Lisovy
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
