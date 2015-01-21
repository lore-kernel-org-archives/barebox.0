Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo68.mail-out.ovh.net ([46.105.63.230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDoou-0000Yj-BR
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 06:31:17 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 1EEA9FF9B30
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 07:30:43 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 14:30:33 +0800
Message-Id: <7393E354-E5D5-45FC-943D-84B62C905CC7@jcrosoft.com>
References: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH 0/5] rafactor _*MAX, *_MIN macros
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

Ack common.h should nearly been drop ASAP

Best Regards,
J.
> On Jan 21, 2015, at 1:09 PM, Masahiro Yamada <yamada.m@jp.panasonic.com> wrote:
> 
> 
> 
> 
> Masahiro Yamada (5):
>  fs: ubifs: remove redundant macro defines
>  lib: decompress: remove redundant INT_MAX define
>  linux/kernel.h: move *_MAX, *_MIN macros
>  linux/kernel.h: rename USHORT_MAX, SHORT_MAX, SHORT_MIN
>  linux/kernel.h: add more *_MAX, *_MIN macros
> 
> fs/parseopt.c            |  2 +-
> fs/ubifs/ubifs.h         |  4 ----
> include/common.h         | 13 -------------
> include/linux/kernel.h   | 27 +++++++++++++++++++++++++++
> lib/decompress_bunzip2.c |  4 ----
> 5 files changed, 28 insertions(+), 22 deletions(-)
> 
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
