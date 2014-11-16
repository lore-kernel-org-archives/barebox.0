Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-f43.google.com ([209.85.192.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xq7VY-000868-S3
 for barebox@lists.infradead.org; Sun, 16 Nov 2014 21:37:21 +0000
Received: by mail-qg0-f43.google.com with SMTP id f51so14561967qge.30
 for <barebox@lists.infradead.org>; Sun, 16 Nov 2014 13:36:58 -0800 (PST)
Message-ID: <5469189B.7010009@vanguardiasur.com.ar>
Date: Sun, 16 Nov 2014 18:35:23 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
MIME-Version: 1.0
References: <1413909243.628274148@f65.i.mail.ru>
In-Reply-To: <1413909243.628274148@f65.i.mail.ru>
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
Subject: Re: LPC43xx
To: Alexander Shiyan <shc_work@mail.ru>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>

Hi Alexander,

On 10/21/2014 01:34 PM, Alexander Shiyan wrote:
> Hello all.
> 
> We started developing device which uses NXP LPC43xx CPU. I would like to add
> support for this CPU series into barebox.
> The problem is that there is no support for this architecture in the Linux kernel,
> and it would upset the current concept (the barebox tree is very similar to Linux
> tree and we not have any orphan arch-s).

I'm working on the upstream Linux port for LPC43xx SoCs. The obvious
choice would be mach-lpc43xx. The problem is that LPC18xx are similar
SoCs, and I think it would make sense to have them in the same mach-xxx.
Haven't made up my mind on this issue, and I suspect we won't find out
until we push some patches upstream.

Anyway, if you make any progress with the barebox port, I'd be happy to
take a look and help you test it.

Regards,
-- 
Ezequiel Garcia, VanguardiaSur
www.vanguardiasur.com.ar

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
