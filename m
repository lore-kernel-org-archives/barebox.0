Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF0bA-0004lt-Rp
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 11:08:57 +0000
Received: from mail247.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C9DDE104E82D
 for <barebox@lists.infradead.org>; Mon, 11 Mar 2013 12:20:08 +0100 (CET)
Date: Mon, 11 Mar 2013 12:04:37 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130311110437.GF11170@game.jcrosoft.org>
References: <1362924823.394544173@f371.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362924823.394544173@f371.mail.ru>
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
Subject: Re: New dt-only arm/mach
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 18:13 Sun 10 Mar     , Alexander Shiyan wrote:
>    Hello All.
> 
>    I want to add new arch into barebox. n the kernel this arch is dt-only.
>    I talking about mach-sunxi. So, how we should handle such platform
>    in the barebox? We need always provide dtb to the kernel, then where
>    it should be in barebox?
>    I think about dtb-file in /env, but not sure...

sama5, sama9x5, sam9n12 are pure DTB kernel

Calxeda Highbank is pure DT with barebox dt probe

Best Regards,
J.
>    Thanks.
> 
>    ---

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
