Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFSTn-00085W-KD
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 16:55:13 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1B176DC225E
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 18:06:23 +0100 (CET)
Date: Tue, 12 Mar 2013 17:50:51 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130312165051.GA1568@game.jcrosoft.org>
References: <CA+7xNQm=AznWKRLFr3uwPekYLW4rYu7D1zVW_mW6VermU4LhfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+7xNQm=AznWKRLFr3uwPekYLW4rYu7D1zVW_mW6VermU4LhfQ@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] Watchdog driver for AT91SAM9 SOC
To: "Renaud C." <r.cerrato@til-technologies.fr>
Cc: barebox <barebox@lists.infradead.org>

Hi,

	I already send it to the ML and the current framework wd is not how I
	want it

	no attachement path nightmare to read under mutt

Best Regards,
J.
On 16:46 Tue 12 Mar     , Renaud C. wrote:
>    This patch add watchdog driver for AT91SAM9 SOC. Beware that the watchdog
>    unit is write once. I only added the at91_add_device_watchdog(void) API
>    for AT91SAM9260 devices, but the driver should work on all AT91SAM9.


> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
