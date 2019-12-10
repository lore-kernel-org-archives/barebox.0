Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehgG-0006SV-6S
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 15:44:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id h23so20419518ljc.8
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 07:44:07 -0800 (PST)
MIME-Version: 1.0
References: <CAFfN3gV-kAhDE6=EBJetWT0+T8hgq5tUXAn0qzwK2Q7c8-wsUQ@mail.gmail.com>
 <20191210151042.pkmavrxwlry3525t@pengutronix.de>
In-Reply-To: <20191210151042.pkmavrxwlry3525t@pengutronix.de>
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 16:43:54 +0100
Message-ID: <CAFfN3gURy6N4F=u-uCUU-sYabvjBUfts2XeKNyJXfBxY1frKYg@mail.gmail.com>
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

Hi Sascha,

Am Di., 10. Dez. 2019 um 16:10 Uhr schrieb Sascha Hauer
<s.hauer@pengutronix.de>:
[...]
> Well the commit message says it:
> | commit b6fef20c1215c6ef0004f6af4a9c4b77af51dc43
> | Author: Sascha Hauer <s.hauer@pengutronix.de>
> | Date:   Thu Mar 29 13:49:45 2018 +0200
> |
> |     block: Adjust cache sizes
> |
> |     Use four times more cache entries and divide the memory for each entry
> |     by four. This lowers the linear read throughput somewhat but increases
> |     the access speed for filesystems.
Yes, I know. I've read the commit message. But this patch even costs me ~200ms
in boottime (loading kernel and dts from ext4 root partition).

[...]
> We could adjust RW_BUF_SIZE (used by copy_file as buffer size) to a full
> chunk size (16KiB). Does this give you back some lost performance?
No, changing RW_BUF_SIZE did not help.

Regards
Hubert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
