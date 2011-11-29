Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RVIsL-000161-0b
 for barebox@lists.infradead.org; Tue, 29 Nov 2011 08:17:13 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8B8F1DC8C51
 for <barebox@lists.infradead.org>; Tue, 29 Nov 2011 09:23:44 +0100 (CET)
Date: Tue, 29 Nov 2011 09:13:54 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111129081354.GT15008@game.jcrosoft.org>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
 <1322467340-10596-6-git-send-email-s.hauer@pengutronix.de>
 <20111128110331.GE15008@game.jcrosoft.org>
 <20111128111238.GV27267@pengutronix.de>
 <20111129043829.GO15008@game.jcrosoft.org>
 <20111129072325.GI16719@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111129072325.GI16719@pengutronix.de>
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
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:23 Tue 29 Nov     , Robert Schwebel wrote:
> On Tue, Nov 29, 2011 at 05:38:29AM +0100, Jean-Christophe
> PLAGNIOL-VILLARD wrote:
> > > > I'm using it so please do not remove the old arch_number
> > >
> > > I'm not removing it, just changing the name. Can't you update the
> > > name in your environment?
> >
> > no :(
> 
> Huh? You are able to exchange your bootloader against a new one, but you
> are not able to exchange your environment as well? Can you explain that
> a bit more detailed?

env in otp

contain box uniq info that can not be changed after prod

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
