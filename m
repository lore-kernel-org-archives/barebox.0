Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RVFVc-0000SZ-Is
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 04:41:33 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 221A3DC85C4
 for <barebox@lists.infradead.org>; Tue, 29 Nov 2011 05:48:04 +0100 (CET)
Date: Tue, 29 Nov 2011 05:38:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111129043829.GO15008@game.jcrosoft.org>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-6-git-send-email-s.hauer@pengutronix.de>
 <20111128110331.GE15008@game.jcrosoft.org>
 <20111128111238.GV27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111128111238.GV27267@pengutronix.de>
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
Subject: Re: [PATCH 05/14] armlinux: cleanup linux vars
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:12 Mon 28 Nov     , Sascha Hauer wrote:
> On Mon, Nov 28, 2011 at 12:03:31PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:02 Mon 28 Nov     , Sascha Hauer wrote:
> > > arch_number is currently exported to the environment but not read back
> > > on boot time which is rather confusing. system_rev and system_serial
> > > are not exported to the environment but can be set in board specific
> > > code.
> > > This patch exports all these variables to the environment and reads them
> > > back on boot time. All variables get a armlinux_ prefix, so the
> > > arch_number environment variable gets renamed.
> > I'm using it so please do not remove the old arch_number
> 
> I'm not removing it, just changing the name. Can't you update the name
> in your environment?
no :(

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
