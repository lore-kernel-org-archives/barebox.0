Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo179.mail-out.ovh.net ([178.33.250.45])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAvVl-000695-Rv
 for barebox@lists.infradead.org; Wed, 17 May 2017 09:44:56 +0000
Received: from player755.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 9AF6A3B372
 for <barebox@lists.infradead.org>; Wed, 17 May 2017 11:44:26 +0200 (CEST)
Received: from [192.93.121.120] (LMontsouris-657-1-9-166.w90-63.abo.wanadoo.fr
 [90.63.250.166]) (Authenticated sender: georg.hofmann@webdyn.com)
 by player755.ha.ovh.net (Postfix) with ESMTPSA id BF396260089
 for <barebox@lists.infradead.org>; Wed, 17 May 2017 11:44:24 +0200 (CEST)
From: Georg Hofmann <georg.hofmann@webdyn.com>
Message-ID: <ce9d88fb-a15a-c533-521e-62ad84d161d8@webdyn.com>
Date: Wed, 17 May 2017 11:44:24 +0200
MIME-Version: 1.0
Content-Language: en-US
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
Subject: USB ohci on sama5d3
To: barebox@lists.infradead.org

Hello,

First of all, thanks for barebox, it's really a nice tool which I am
discovering.

I am trying to get USB ohci working on a sama5D3 evk. My current state
is that the ohci driver get compiled and is called when I use the
command usb, the root hub shows up, but the device enumeration don't work.

So my question was: is the presence of the file ohci-at91.C indicating
that ohci should work on some at91* platforms or is it just a copy/past
from another place. If it should work, on which platform? In the may
release are some USB patched (e.g.: "Allow USB_OHCI_AT91 even if
USB_OHCI is disabled"). Where these patches runtime tested?

Thanks in advance.
Best regards,
Georg


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
