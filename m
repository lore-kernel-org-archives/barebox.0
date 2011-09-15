Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R4C8N-0003e8-Ns
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 13:37:44 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 27E49DCDA6A
	for <barebox@lists.infradead.org>;
	Thu, 15 Sep 2011 15:38:48 +0200 (CEST)
Date: Thu, 15 Sep 2011 15:15:52 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110915131552.GJ28104@game.jcrosoft.org>
References: <1316034631-26970-1-git-send-email-h.feurstein@gmail.com>
	<1316034631-26970-2-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1316034631-26970-2-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH 2/2] at91sam9260: remove remaining
	'at91_clock_associate' function
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 23:10 Wed 14 Sep     , Hubert Feurstein wrote:
> This fixes the following compile warning when MCI_ATMEL is selected:
>   arch/arm/mach-at91/at91sam9260_devices.c: In function 'at91_add_device_mci':
>   arch/arm/mach-at91/at91sam9260_devices.c:251:2: warning: implicit declaration of function 'at91_clock_associate'
> 
> Introduced in commit:
>   "at91: swtich to clkdev" (ae19fe26cc230bc38238c2d66b8f464761286316)
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
please join it with 92g45 fix

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
