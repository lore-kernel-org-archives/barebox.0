Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdqUn-0002Id-AD
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 05:52:14 +0000
Date: Mon, 31 Dec 2018 06:52:03 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181231055203.GA25643@ravnborg.org>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
 <1546178368-26182-3-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1546178368-26182-3-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 02/11] kbuild: add .DELETE_ON_ERROR special target
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

Hi Masahiro

On Sun, Dec 30, 2018 at 10:59:19PM +0900, Masahiro Yamada wrote:
> Linux commit 9c2af1c7377a8a6ef86e5cabf80978f3dbbb25c0
> (adjust commit log because barebox does not support external module)
Actually barebox has some very limited support for external modules
and the plan is to make this to something that is useable.
For kbuild stuff all the external module support, from when
barebox copied it from the kernel, has been kept.

In this case it is only relevant for the changelog as the patch is
the same.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
