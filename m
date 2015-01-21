Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDs2a-0008Fu-MB
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 09:57:37 +0000
Received: from mail636.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 07452FF9C1E
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 10:57:11 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150121094113.GF12209@pengutronix.de>
Date: Wed, 21 Jan 2015 17:56:48 +0800
Message-Id: <A202A15F-ECFC-4787-A8A2-1F9D45A29BFF@jcrosoft.com>
References: <1421739085-21150-1-git-send-email-voice.shen@atmel.com>
 <20150121094113.GF12209@pengutronix.de>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: fix conflict between w1 and led
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


> On Jan 21, 2015, at 5:41 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> On Tue, Jan 20, 2015 at 03:31:25PM +0800, Bo Shen wrote:
>> As the 1-wire and LED d2 use the same pin (PE25) on the EK board.
>> So, make LED enable only when the 1-wire is disabled.
>> 
>> Signed-off-by: Bo Shen <voice.shen@atmel.com>
>> ---
>> 
>> arch/arm/boards/sama5d3xek/init.c | 8 ++++++++
>> 1 file changed, 8 insertions(+)
> 

On barebox this does not conflict

as we do not have multi task support

Best Regards,
J.
> Applied, thanks
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
