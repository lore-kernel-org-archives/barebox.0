Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3SUi-0004sn-1d
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 13:26:01 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7B35DDC3C4C
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 14:28:51 +0100 (CET)
Date: Fri, 2 Mar 2012 14:16:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120302131617.GZ12248@game.jcrosoft.org>
References: <4F50C74E.20703@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F50C74E.20703@ronetix.at>
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
Subject: Re: AT91SAM9G45: MACB: not usable Ethernet when MMU is enabled
To: RONETIX - Asen Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 15:12 Fri 02 Mar     , RONETIX - Asen Dimov wrote:
> Hello everyone,
> 
> the Ethernet on AT91SAM9G45(with ARM926J CPU) is not operational
> when the MMU is enabled.
> Have some met with this issue before and probably solved it?
check if the buffer is allocated for dma

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
