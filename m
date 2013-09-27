Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRvl-0000ML-Mi
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:53:38 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 06678DC1D6E
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 08:53:16 +0200 (CEST)
Date: Fri, 27 Sep 2013 08:54:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130927065434.GA32444@ns203013.ovh.net>
References: <1380227429.10759.1.camel@lolumad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380227429.10759.1.camel@lolumad>
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
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org

On 22:30 Thu 26 Sep     , Rostislav Lisovy wrote:
> Dear barebox developers and users;
> I am compiling barebox for freescale-imx53-smd board. My issue is,
> that the image does not contain the correct size record.
> The "bootloader size" needed by the flashing tool is initialized in
> freescale-mx53-smd/flash_header.c, in structure flash_header,
> field .boot_data.size.
> Formerly there used to be a hardcoded value 0x40000, nowadays we use
> DCD_BAREBOX_SIZE which expands into (barebox_image_size + 4095), where
> "barebox_image_size" has real size computed by the linker.
> When the value .boot_data.size is filled by hand (as 0x40000), correct
> value is stored in the barebox image.
> Proof: hexdump -s 0x24 -n 4 barebox-flash-image
> 0000024 0000 0004
> 
> however if .boot_data.size = DCD_BAREBOX_SIZE,
> $ hexdump -s 0x24 -n 4 barebox-flash-image
> 0000024 0fff 0000
> where this 0xfff is the "+4095" added to round the value. (I am pretty
> sure the offset into the image used by hexdump is correct).
> 
> The barebox version I am using most recent git, branch master.
> The compiler (maybe here is the point of failure) is
> arm-cortex_a8-linux-gnueabi-gcc (crosstool-NG hg+default-86a8d1d467c8)
> 4.4.6.

do you compile a relocation binary?

if yes the barebox size is 0 for the linker script

I send a patch for the -next to start to fix the issue but I think we need
other fixup

Best Regards,
J.
> 
> I will appreciate any help;
> Rostislav Lisovy
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
