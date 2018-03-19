Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqkP-00073F-WB
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:06:31 +0000
Date: Mon, 19 Mar 2018 05:06:17 -0400
From: =?iso-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Message-ID: <20180319090616.vmmb2dky3syrmuwm@archlinux.local>
References: <20180318222236.28296-1-gael.portay@savoirfairelinux.com>
 <20180319083629.kxjdc4jnd35prif2@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180319083629.kxjdc4jnd35prif2@pengutronix.de>
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
Subject: Re: [PATCH] fs: check pointer returned by get_fsdevice_by_path
 before dereferencing
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Mar 19, 2018 at 09:36:29AM +0100, Sascha Hauer wrote:
> ...
> I wonder though what calls into the filesystem layer before / is
> mounted in your case.
>

The issue is trigger by function stat() in start_barebox(), right before
I expect to have a shell.

Here.

	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
		pr_info("running /env/bin/init...\n");

		if (!stat("/env/bin/init", &s))
			run_command("source /env/bin/init");
		else
			pr_err("/env/bin/init not found\n");
	}

My configuration is very minimal for now. I do not have (yet) any FS
selected (excepted devfs) and I do not have any root device mounted
either in this configuration.

I guess this is why fs_dev_root is NULL and why get_fsdevice_by_path()
returns fs_dev_root (because there is nothing to iterate in list
fs_device_list).

Gael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
