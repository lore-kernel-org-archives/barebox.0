Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdqXa-0002pr-Ot
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 05:55:08 +0000
Date: Mon, 31 Dec 2018 06:55:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181231055503.GB25643@ravnborg.org>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
 <1546178368-26182-4-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1546178368-26182-4-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 03/11] kbuild: add .SECONDARY special target
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

Hi Masahiro

> I deleted 'SECONDARY' (no dot) from images/Makefile, which I guess
> a typo.
Agreed. I did some testing when working on another patch and here
I came to the same conclusion and deleted this.
(There will be a trivial conflict as both patches delete the
same line)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
