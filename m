Delivery-date: Tue, 31 Jan 2023 07:16:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMjwP-008VzQ-JR
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 07:16:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMjwM-0001E0-Ty
	for lore@pengutronix.de; Tue, 31 Jan 2023 07:16:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4c91OBAAAZNtqsSpp8LOp58TwTInCiBQn3XVWORAd9I=; b=qRHpmrZyH1KoXT6AUhNxqvK6IU
	YCOAsgc/zYilqgZrlzP/i++ZPna3YTMf+Stxf+9VOZ0+LA5G05FWWEy8oslzQd4TaRwYhY0Cq8UoX
	0jS6yHY51QVQA/NddKDbLRegGE5/lPz/2Kw2wpmmIsUHoajDeA4DTn9fbQt8mY3q7dmYdFU3Jmgl0
	+lk/MLMLgAvI4GyrFQUm8uIK3+QttLOFlCEwcO7BQFuDg1VO8j2AlhvXvJ9O8HZeiGOCIT5UVKblX
	TWR+lJK1Kr7K5Ctf1pYwNtZqXGvyNXD44LbHDaKhQdOWYi0XVLw8tzNJZtv73GEysTTSuONn4f5yY
	7q6Cg/Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMjus-006R5i-5D; Tue, 31 Jan 2023 06:14:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMjun-006R3Z-7K
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 06:14:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMjuj-0000o1-UO; Tue, 31 Jan 2023 07:14:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMjui-0007u5-5T; Tue, 31 Jan 2023 07:14:40 +0100
Date: Tue, 31 Jan 2023 07:14:40 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230131061440.GU13319@pengutronix.de>
References: <20230126185643.104049-1-contact@jookia.org>
 <20230130102727.GQ13319@pengutronix.de>
 <Y9efLdQi++e/ZFOn@novena-choice-citizen>
 <20230130121752.GR13319@pengutronix.de>
 <Y9e3F2WtTDWOhbE0@novena-choice-citizen>
 <20230130123142.GS13319@pengutronix.de>
 <Y9e+dKTG59Y0Kxhl@novena-choice-citizen>
 <20230130163658.GT13319@pengutronix.de>
 <Y9gPlWk6pCA6WnQ5@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9gPlWk6pCA6WnQ5@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_221445_303626_52F46987 
X-CRM114-Status: GOOD (  19.70  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 31, 2023 at 05:42:29AM +1100, John Watts wrote:
> On Mon, Jan 30, 2023 at 05:36:58PM +0100, Sascha Hauer wrote:
> > You can't disable MMU during runtime, but you can compile without MMU
> > support, just disable CONFIG_MMU. However, the early I2C code already
> > runs with MMU disabled, can't you just put in some test code there?
> 
> This is going to sound really silly but I'm not sure how to time the code
> without a clock. I guess grabserial?

You could udelay(10000000) and measure the time with a stopwatch.
That should be accurate enough for this purpose already, in the end
the time will differ anyway between SoCs.

If you want to measure more exactly we have this little perl script
which prints a timestamp for each line printed.

Sascha

------------------------8<----------------------

#! /usr/bin/perl
#
# ptx_ts - Pengutronix' Add A Time Stamp Filter V1
# written by Wolfram Sang, Copyright 2009 Pengutronix
# free software - no warranty - WTFPL V2, see http://sam.zoy.org/wtfpl/

use warnings;
use strict;
use Time::HiRes qw(gettimeofday tv_interval);

my $arg = defined($ARGV[0]) ? $ARGV[0] : '(?=foo)bar'; # false-branch is a regexp that never matches
if ($arg eq '--help') {
        print "ptx_ts [regexp] - a filter which prepends a timestamp to every line of STDOUT; time will be reset if [regexp] matches\n";
        print "  Example: microcom <microcom_options> | ptx_ts 'U-Boot 2.0'\n";
        exit 0;
}

my $old;
my $base;
$| = 1; # Flush output immediately

sub reset_time {
        $old = 0;
        $base = [gettimeofday()];
}

reset_time;
while (<STDIN>) {
        reset_time if (/$arg/o);
        my $new = tv_interval($base);
        my $diff = $new - $old;
        printf("[%10.6f] <%10.6f> $_", $new, $diff);
        $old = $new;
}


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


