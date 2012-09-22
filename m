Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFUQ0-0007xl-IN
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 18:27:09 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8E538FF9DFE
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 20:33:00 +0200 (CEST)
Date: Sat, 22 Sep 2012 20:24:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120922182434.GY26553@game.jcrosoft.org>
References: <1348311530.3917.5.camel@mars>
 <20120922114346.GT26553@game.jcrosoft.org>
 <1348328517.25235.5.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348328517.25235.5.camel@mars>
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
Subject: Re: [PATCH 1/2][v2] net: add nameserver IPs to kernel-parameter ip=
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On 17:41 Sat 22 Sep     , Christoph Fritz wrote:
> Kernel-parameter "ip=" is used to assign network configuration.
> With linux kernel 3.7 it is also possible to set nameserver IPs.
> 
> This patch adds two new variables (nameserver0 and nameserver1) to
> barebox's $net configuration.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
this is not the right way to handle this the option 6 of the DHCP allow a dhcp
server to provide n nameserver

so we need to use tehm if provided and if you add nameserver1 we need to use
it for resolve too

patch in reply

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
