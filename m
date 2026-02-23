Delivery-date: Mon, 23 Feb 2026 12:14:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTtB-004oMN-1P
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:14:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTtB-00061N-Lr
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:14:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xNFrPoMvI6jZ2ZdhSaLI8MUcxVis1NYKJi6ad6mVXJM=; b=hBc4IOLqvKpsJgFU1asVOs4Pd0
	O2rEsI/3jy518LGxbhk1ZocUZpBVOkRbHQFj96XbgW/vkjMCwyQp9gqb+6ouvDdZUClxGCAcW7q0b
	7Pq/CEF/S0rckrpk16tJrXfUrWrjCulHfPJdlyA9KHBxs7PysZHY0xBOCAC3Mjf2RJvzqLv6YzPcI
	65eLbxFVtKSA0Yi4cVtDlr643Hy2dTCu5PbTdgxRlfU62s2lfl1FoqlQ8cTNZPBZg+msTF/9sL1gH
	/2LSCIgotdZqaIa5YMZIV/nMdLhZ3ygwKIkKsvCvYt4dVHof2rtylXhHfh1/Br0Jl5KpyhcvdV1hn
	ZqQ6nBCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTsq-000000008Jb-1tFE;
	Mon, 23 Feb 2026 11:13:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTso-000000008Ip-2PCC
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:13:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuTsm-0005yI-ON; Mon, 23 Feb 2026 12:13:44 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuTsl-002DiW-0h;
	Mon, 23 Feb 2026 12:13:44 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vuTsm-000000017Wi-1w5V;
	Mon, 23 Feb 2026 12:13:44 +0100
Date: Mon, 23 Feb 2026 12:13:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <jvaazgehnkdyhtcbozigcnwenwpz7zikk5dlv42fxcmii74okp@pjdblu4xv4ke>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
 <20260212-vmaster-customers-leicageo-system1600-v2-5-f590b7d5b0e9@pengutronix.de>
 <aZwz7rBADSdrEaIs@pengutronix.de>
 <2f242d61-816b-4487-8551-d48e65b151c2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2f242d61-816b-4487-8551-d48e65b151c2@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_031346_618439_6B070A51 
X-CRM114-Status: GOOD (  25.94  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/7] commands: make run_command variadic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-23, Ahmad Fatoum wrote:
> On 2/23/26 12:03 PM, Sascha Hauer wrote:
> > On Thu, Feb 12, 2026 at 11:02:07PM +0100, Marco Felsch wrote:
> >> This prepares run_command() to receive a format string and variadic
> >> arguments which can become quite handy for board code. It also ensures
> >> a proper cleanup for the command string and generalizes the error
> >> message printing.
> >>
> >> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >> ---
> >>  common/hush.c     | 23 ++++++++++++++++++++++-
> >>  common/parser.c   | 24 +++++++++++++++++++++++-
> >>  include/command.h |  4 ++--
> >>  3 files changed, 47 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/common/hush.c b/common/hush.c
> >> index 2e0cc4229d3575dcf045f68ef8db3e943c41eedb..b46a42cc90c863376bb819755afc83271120200f 100644
> >> --- a/common/hush.c
> >> +++ b/common/hush.c
> >> @@ -1922,7 +1922,7 @@ static char * make_string(char ** inp)
> >>  	return str;
> >>  }
> >>  
> >> -int run_command(const char *cmd)
> >> +static int __run_command(const char *cmd)
> >>  {
> >>  	struct p_context ctx = {};
> >>  	int ret;
> >> @@ -1938,6 +1938,27 @@ int run_command(const char *cmd)
> >>  	return ret;
> >>  }
> >>  
> >> +int run_command(const char *fmt, ...)
> >> +{
> >> +	va_list vargs;
> >> +	char *cmd;
> >> +	int error;
> >> +
> >> +	va_start(vargs, fmt);
> >> +	cmd = xvasprintf(fmt, vargs);
> >> +	va_end(vargs);
> >> +
> >> +	error = __run_command(cmd);
> >> +	if (error) {
> >> +		error_msg("Failed to run CMD: '%s' with %d\n", cmd, error);
> >> +		free(cmd);
> >> +		return error;
> >> +	}
> > 
> > Dropped this error printing while applying. There was no error printing
> > before this patch and also some commands might intentionally silently
> > fail, so error printing should be done in the caller.
> 
> Good catch. gpio_get_value comes to mind where this would be rather
> confusing.

Sure, I thought it come in handy but I get your point! Thanks for the
inline fixup.

Regards,
  Marco


> 
> Cheers,
> Ahmad
> 
> > 
> > Sascha
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


