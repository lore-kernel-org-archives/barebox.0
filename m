Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.97.mail-out.ovh.net ([178.33.44.185]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUqll-0008LV-MY
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 01:44:18 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id C9F6C4A7675
	for <barebox@lists.infradead.org>;
	Fri, 10 Jun 2011 03:44:53 +0200 (CEST)
Date: Fri, 10 Jun 2011 03:30:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110610013056.GN17584@game.jcrosoft.org>
References: <20110609145028.GH17584@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110609145028.GH17584@game.jcrosoft.org>
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
Subject: Re: pull request complete support
To: barebox@lists.infradead.org

On 16:50 Thu 09 Jun     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	This patch series add the support of the complete for :
> 	- var and device param (set and get)
> 	- generic command complete framework
> 	- devinfo
> 	- help
> 	- empty command complete
> 	- eth interface
> 
> 	this will also include the move driver and bus code to drivers/base
> 	patch as this series depend on it
git updated with
[PATCH v2] complete: add var and device param complete support

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
