Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RHsvv-0007CN-Ir
	for barebox@lists.infradead.org; Sun, 23 Oct 2011 07:57:28 +0000
Received: from mail34.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 4D711100111D
	for <barebox@lists.infradead.org>;
	Sun, 23 Oct 2011 09:59:19 +0200 (CEST)
Date: Sun, 23 Oct 2011 09:32:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111023073220.GG2638@game.jcrosoft.org>
References: <1319356101-4521-1-git-send-email-plagnioj@jcrosoft.com>
	<1319356101-4521-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1319356101-4521-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/3] sandbox: simplify linker script
To: barebox@lists.infradead.org

On 15:48 Sun 23 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> let the linker to provide the basic linker script
> 
> just insert the commands and initcalls before the .rodata section
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
this was do to fix ARM host support as the basic lds is different

a second set will be to drop the SUBARCH stuff and use the compiler macro to
detect the ELFCLASS as done in linux

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
