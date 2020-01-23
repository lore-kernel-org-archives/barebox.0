Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout04.rmx.de ([94.199.90.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZkd-0003cH-Cb
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 10:30:17 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout04.rmx.de (Postfix) with ESMTPS id 483JS20NYCz3r0Xl
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 11:29:54 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 483JRp3M5Lz2yyY
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 11:29:42 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Thu, 23 Jan 2020 11:29:41 +0100
Message-ID: <2068200.0Z92YdXjpK@n95hx1g2>
In-Reply-To: <20200120195351.skm7ujz7yjr6mu32@pengutronix.de>
References: <2198510.7r5C0NBLhF@n95hx1g2>
 <20200120195351.skm7ujz7yjr6mu32@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Configuring for secure boot / Using bootchooser
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

seems I ran into trouble (see below) with CONFIG_SHELL_NONE.

Am Montag, 20. Januar 2020, 20:53:51 CET schrieb Sascha Hauer:
> Hi Christian,
> 
> On Mon, Jan 20, 2020 at 05:38:36PM +0100, Christian Eggers wrote:
> > Board: phytec-som-imx6
> > 
> > I need to configure barebox in a way, that a malicious attacker can not
> > break into the system. It looks like I need to perform the following
> > steps:
> > 
> > 3. Prevent access to the barebox shell
> > --> CONFIG_CMD_LOGIN?
> > --> CONFIG_SHELL_NONE?
> 
> I wouldn't trust CONFIG_CMD_LOGIN that much. If you do, at least make
> sure to use a safe hash function for the password, i.e. not the default
> md5.
> Disabling the shell entirely with CONFIG_SHELL_NONE is the best you can
> do. This also forces you to program your boot process in C which helps
> you to get a well defined boot without diving into potentially unsafe
> shell commands.

I've tried to implement my boot process in C. Attaching the MTD partition to 
UBI and directly calling bootm_data() looks straightforward and seems to work.

	bootm_data_init_defaults(&data);
	data.os_file = "/dev/nand0.root.ubi.kernel";

	ret = bootm_boot(&data);
	if (ret) {
		printf("handler failed with: %s\n", strerror(-ret));
		goto error_return;
	}

Now I'm trying to integrate bootchooser. My first attempt was to call 
bootchooser directly from my barebox_main:

	bc = bootchooser_get();
	if (IS_ERR(bc))
		return PTR_ERR(bc);

	ret = bootchooser_boot(bc);

	bootchooser_put(bc);

Unfortunately this doesn't work, because there is no boot provider available 
for booting the result of bootchooser (e.g. "nand0.root.ubi.kernel").

From the documentation of the "boot" command, this should be possible:

----------------8<---------------
BAREBOX_CMD_HELP_TEXT("BOOTSRC can be:")
BAREBOX_CMD_HELP_TEXT("- a filename under /env/boot/")
BAREBOX_CMD_HELP_TEXT("- a full path to a boot script")
BAREBOX_CMD_HELP_TEXT("- a device name")   
BAREBOX_CMD_HELP_TEXT("- a partition name under /dev/")  <---- tried this one
BAREBOX_CMD_HELP_TEXT("- a full path to a directory which")
BAREBOX_CMD_HELP_TEXT("   - contains boot scripts, or")
BAREBOX_CMD_HELP_TEXT("   - contains a loader/entries/ directory containing 
bootspec entries")
---------------->8---------------

Looking into bootentry_create_from_name() I didn't find how booting from "a 
device name" or "a partition name" can work.

Also using the shell doesn't help:
----------------8<---------------
barebox:/ boot nand0.root.ubi.kernel
Nothing bootable found on 'nand0.root.ubi.kernel'
Nothing bootable found
---------------->8---------------
So I'm able to run bootm_boot() directly from C, but I've not found a way to 
boot indirectly via bootchooser.

Any hints how I can use bootchooser from my own barebox_main() with 
CONFIG_SHELL_NONE?




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
