Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::11])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZwvu-0000Oz-3g
 for barebox@lists.infradead.org; Fri, 03 Oct 2014 07:05:42 +0000
Received: from [IPv6:2a01:e35:8afd:40b0:908b:d83c:6cd7:ad62]
 ([2a01:e35:8afd:40b0:908b:d83c:6cd7:ad62])
 by smtp.strato.de (RZmta 35.9 AUTH) with ESMTPSA id D056a0q9375IICf
 (using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 for <barebox@lists.infradead.org>;
 Fri, 3 Oct 2014 09:05:18 +0200 (CEST)
Message-ID: <542E4AAD.7070703@calao-systems.com>
Date: Fri, 03 Oct 2014 09:05:17 +0200
From: =?UTF-8?B?R3LDqWdvcnkgSGVybWFudA==?= <gregory.hermant@calao-systems.com>
MIME-Version: 1.0
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
Subject: at91 usbserial issue
To: barebox@lists.infradead.org

Hi all,
The usbserial seems to be broken for board equipped with an Atmel sam9260/9g20 Soc.
I ran the lastest version of barebox (v2014.10.0) on a USB_A9G20_LPW.
Below the trace
udc0: registering UDC driver [g_serial]
g_serial usbgadget: acm/23ba9538: can't bind, err -19
g_serial udc0: failed to start g_serial: -19
usbserial: No such device
I didn't yet investigate this issue but i was wondering if someone noticed the problem.
Greg

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
