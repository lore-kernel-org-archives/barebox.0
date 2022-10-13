Delivery-date: Thu, 13 Oct 2022 09:17:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oisT4-0074hu-Lp
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 09:17:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oisT2-0005Vw-NB
	for lore@pengutronix.de; Thu, 13 Oct 2022 09:17:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zh/aB9+jqWp8jTwlvTwF/tqzBJdgYS8O9CU36UCICxA=; b=Df3zTTHF5LDDcu1rRCK+aLXn5H
	Bp7vggd4nKaePPxP/vU88F0cRrmLuM7b7nhTEGuG5lIPOUUnwcrcdt/5KE/o6VNTRKkWJfhDpcXu7
	sxYrBm69x4O6xv22KKSk2jSNkHfAJK5ucPErSWN0RmVxkLU5ZyzqbVwoRF/7lzwTwQVvjNqhsZJEz
	uWQb1Ta3aTnVSznMIaYL5eFzu4s9Gt919muVwJEVnCmIhfPni2zBJawG4AW82vxPb/+29Z/THgK9Z
	otSW5xn1Xg6TVTudnji/goAfY96NqU3dQzpnoq9mS7wndjfZ5pQ8CqCZi6aC/E/UUVpGnhFYAf3U5
	Jf51WWcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oisRM-00Axy5-J4; Thu, 13 Oct 2022 07:15:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oisRI-00Axxe-D7
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 07:15:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oisRH-0005IC-08; Thu, 13 Oct 2022 09:15:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oisRG-0004jv-PF; Thu, 13 Oct 2022 09:15:30 +0200
Date: Thu, 13 Oct 2022 09:15:30 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221013071530.GD6702@pengutronix.de>
References: <20221010064358.2119629-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010064358.2119629-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_001532_458647_7F99A72B 
X-CRM114-Status: GOOD (  18.02  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: add new stat command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 08:43:58AM +0200, Ahmad Fatoum wrote:
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <linux/stat.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <stringlist.h>
> +
> +static int do_stat(int argc, char *argv[])
> +{
> +	int (*statfn)(const char *, struct stat *) = stat;
> +	int ret, opt, exitcode = 0;
> +	char **filename;
> +	struct stat st;
> +
> +	while((opt = getopt(argc, argv, "L")) > 0) {
> +		switch(opt) {
> +		case 'L':
> +			statfn = lstat;
> +			break;

That's the wrong way round. You have to use lstat() by default and
stat() when -L is given.

> +void stat_print(const char *filename, const struct stat *st)
> +{
> +	struct block_device *bdev = NULL;
> +	struct fs_device_d *fdev;
> +	struct cdev *cdev = NULL;
> +	const char *type = NULL;
> +	char modestr[11];
> +
> +	mkmodestr(st->st_mode, modestr);
> +
> +	switch (st->st_mode & S_IFMT) {
> +		case S_IFDIR:    type = "directory"; break;
> +		case S_IFBLK:    type = "block special file"; break;
> +		case S_IFCHR:    type = "character special file"; break;
> +		case S_IFIFO:    type = "fifo"; break;
> +		case S_IFLNK:    type = "symbolic link"; break;
> +		case S_IFSOCK:   type = "socket"; break;
> +		case S_IFREG:    type = "regular file"; break;
> +	}
> +
> +	printf("  File: %s\n", filename);
> +
> +	if (st->st_mode & S_IFCHR) {
> +		const char *devicefile;
> +
> +		devicefile = devpath_to_name(filename);

This doesn't work really well. I think it's ok this time because there's
enough prior art, but we really need something better. For example "stat
/dev/mmc0" works, but "stat dev/mmc0" does not. You could improve this a
bit by calling canonicalize_path() on filename.

To solve this issue we could add a struct cdev * to struct filep.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


