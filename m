Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFmIE-0000ez-1p
 for barebox@lists.infradead.org; Sun, 23 Sep 2012 13:32:18 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B65F0101407C
 for <barebox@lists.infradead.org>; Sun, 23 Sep 2012 15:38:12 +0200 (CEST)
Date: Sun, 23 Sep 2012 15:29:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120923132946.GB26553@game.jcrosoft.org>
References: <1348328517.25235.5.camel@mars>
 <1348338458-30735-1-git-send-email-plagnioj@jcrosoft.com>
 <1348341957.24868.6.camel@mars>
 <20120922201637.GZ26553@game.jcrosoft.org>
 <20120923121139.GA10871@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120923121139.GA10871@mars>
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
Subject: Re: [PATCH] net: add multiple nameserver support
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On 14:11 Sun 23 Sep     , Christoph Fritz wrote:
> Today limit it to 2
> 
> Update dhcp support as option 6 allow to get n nameserver
> If more than 2 nameserver are provided by the DHCP server ignore them.
I rethink about it and no I do not want wo check it the format here

as I plan to make the globalvar more commoon and swtich net to it too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
