Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout04.rmx.de ([94.199.90.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcBf-0006Dn-27
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 10:32:36 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout04.rmx.de (Postfix) with ESMTPS id 48cBHJ4Mwlz3qwy8
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2020 11:32:28 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 48cBH55fw8z2TTBH
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2020 11:32:17 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 10 Mar 2020 11:32:16 +0100
Message-ID: <5171121.mPVAPPOFPN@n95hx1g2>
In-Reply-To: <20200310094225.qphvkdncc4zg3dfr@pengutronix.de>
References: <20200309142026.26208-1-ceggers@arri.de>
 <20200310094225.qphvkdncc4zg3dfr@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: Add extra delay for device scan
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Primoz Fiser <primoz.fiser@norik.com>

Hi Roland,

Am Dienstag, 10. M=E4rz 2020, 10:42:25 CET schrieb Roland Hieber:
> This should probably be:?
> =

>   Fixes: b1d9837182 ("usb: Change power-on / scanning timeout handling")
> =

>  - Roland
> =


I definitely isolated the regression to that particular commit. Additionall=
y I =

would like to note, that the scanning timeout is more than long enough. It =

seems that if the USB hub is queried within a loop without any sleep in =

between, it has no "resources" left to detecting new devices itself. The =

scanning timeout itself should not be affected by the additional sleep.

Regards
Christian




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
