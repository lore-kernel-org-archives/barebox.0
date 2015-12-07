Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5uSp-0002ek-30
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 12:00:21 +0000
Message-ID: <1449489579.16625.5.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 07 Dec 2015 12:59:39 +0100
In-Reply-To: <CAGm1_kvutnKkJsUYGokTkZRBBhPmRwjgk+ozUX=SCfufCtQ-BA@mail.gmail.com>
References: <CAGm1_kvutnKkJsUYGokTkZRBBhPmRwjgk+ozUX=SCfufCtQ-BA@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: am335x: MLO and Barebox
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox@lists.infradead.org

Hello Yegor,

yes you do understand this correct. There is a am335x_mlo_defconfig for
MLO and a am335x_defconfig for a full barebox image. Both configs will
drop out all available am335x images. Not only Phytec ones.

Regards,
Teresa

Am Montag, den 07.12.2015, 11:38 +0100 schrieb Yegor Yefremov:
> I've looked at Phytec defconfigs. Do I understand it correctly, that I
> need two defconfigs: one for MLO and one for Barebox itself?
> 
> Regards,
> Yegor
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
