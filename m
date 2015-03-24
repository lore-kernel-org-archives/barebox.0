Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaKB5-0002jX-1B
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 08:27:12 +0000
Received: by weop45 with SMTP id p45so157165283weo.0
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2015 01:26:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1427123853-26983-2-git-send-email-t.gamez@phytec.de>
References: <1427123853-26983-1-git-send-email-t.gamez@phytec.de>
 <1427123853-26983-2-git-send-email-t.gamez@phytec.de>
Date: Tue, 24 Mar 2015 09:26:46 +0100
Message-ID: <CAOpc7mE+LEy6ymHURmvq=Q8zLusdOoVDcSSEzbb2LrgEYNupBw@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH] lib/lzo: port lzo fix from upstream kernel
To: =?ISO-8859-1?Q?Teresa_G=E1mez?= <t.gamez@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Teresa,

your commit text doesn't seem to be accurate:


> This ports commit 72cf90124e87d975d0b from mainline kernel to the

... and ...

> -#define HAVE_IP(t, x)                                  \
> -       (((size_t)(ip_end - ip) >= (size_t)(t + x)) &&  \
> -        (((t + x) >= t) && ((t + x) >= x)))

... doesn't match. Because the removal of HAVE_IP isn't in the patch
you mentioned, it's in af958a38a60c7ca3d8a39c918c1baa2ff7b6b233

I guess you combined those two kernel patches?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
