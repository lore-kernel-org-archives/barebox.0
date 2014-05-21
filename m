Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x229.google.com ([2607:f8b0:4002:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn6Vc-0002a9-N1
 for barebox@lists.infradead.org; Wed, 21 May 2014 13:24:40 +0000
Received: by mail-yk0-f169.google.com with SMTP id 200so1560959ykr.28
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 06:24:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400533184-668-6-git-send-email-s.hauer@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
 <1400533184-668-6-git-send-email-s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 15:24:19 +0200
Message-ID: <CAOpc7mHMvNV=ss5tV6iaAvNMxB35CC4XMURbfK+RNjh0HZ9d+g@mail.gmail.com>
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
Subject: Re: [PATCH 5/6] of: Drop devicetree merge support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> I assume I am the only person knowing that barebox is able to
> merge devicetrees.

Hihi, any software feature that isn't documented is (almost) the same
as never been written.

I personally don't need merging, but maybe it can be handy to support
those boards that have plug-on boards, a la "Shields".

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
