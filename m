Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejbA-0006gi-Uo
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 17:47:02 +0000
Received: by mail-lj1-x234.google.com with SMTP id e10so20876109ljj.6
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 09:47:00 -0800 (PST)
MIME-Version: 1.0
References: <CAFfN3gV-kAhDE6=EBJetWT0+T8hgq5tUXAn0qzwK2Q7c8-wsUQ@mail.gmail.com>
 <20191210151042.pkmavrxwlry3525t@pengutronix.de>
 <CAFfN3gURy6N4F=u-uCUU-sYabvjBUfts2XeKNyJXfBxY1frKYg@mail.gmail.com>
 <20191210161812.t7mf72pdm53odmdn@pengutronix.de>
In-Reply-To: <20191210161812.t7mf72pdm53odmdn@pengutronix.de>
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 18:46:46 +0100
Message-ID: <CAFfN3gWFD_mDRyHLmLh5WdYyGMT_YE3486+KeDf8LVREMRf5gA@mail.gmail.com>
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
Subject: Re: [BUG] imx6qdl: degraded eMMC write performance
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Di., 10. Dez. 2019 um 17:18 Uhr schrieb Sascha Hauer
<s.hauer@pengutronix.de>:
[...]
> > > We could adjust RW_BUF_SIZE (used by copy_file as buffer size) to a full
> > > chunk size (16KiB). Does this give you back some lost performance?
> > No, changing RW_BUF_SIZE did not help.
>
> And I also see why :-/
>
> block_op_write() works around block sizes (512bytes), not around chunk
> sizes. This means we always read before we write. This could probably be
> optimized somehow, but this would only speed up the write case you
> described in your initial mail. It seems what you are more interested in
> is the read performance.
Well, I'm interested in both. Of course the read-performance is important
for booting. But the write-performance is important for production. It simply
matters if you have to wait for another 200 seconds for a device to
get programmed.

Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
