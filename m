Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TILUj-0005IR-72
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 15:31:50 +0000
Received: from mail187.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 369EF104DC8F
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 17:37:55 +0200 (CEST)
Date: Sun, 30 Sep 2012 17:29:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120930152919.GT26553@game.jcrosoft.org>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <CAA4bVAG-yzYGNb4mNGTT=hcz1EwAcgDZyKVWnZ-aM8AVaN3wmg@mail.gmail.com>
 <20120930140225.GR26553@game.jcrosoft.org>
 <CAAMcf8Aa00YqVG-87F1Lk+_oCHwrRCeCTKE7G9g_QDK1C2tMcw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8Aa00YqVG-87F1Lk+_oCHwrRCeCTKE7G9g_QDK1C2tMcw@mail.gmail.com>
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
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 17:02 Sun 30 Sep     , vj wrote:
>    In fact the interrupts get enabled at omap4_usbboot_open, it's required
>    for usb transfers.
>    For this reason the interrupts are disabled at barebox exit.
why do you enable the interrupts?

we never use interrupts in barebox

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
