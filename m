Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22a.google.com ([2607:f8b0:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVb9g-00025T-IR
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 08:38:46 +0000
Received: by mail-vk0-x22a.google.com with SMTP id e185so126945157vkb.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 00:38:24 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1455610997-7608-3-git-send-email-yegorslists@googlemail.com>
References: <1455610997-7608-1-git-send-email-yegorslists@googlemail.com>
 <1455610997-7608-3-git-send-email-yegorslists@googlemail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 16 Feb 2016 09:38:03 +0100
Message-ID: <CAGm1_ksKCs70eR+rmw-iWfzZO7SdGA1T6JEmkuwwhXzA=eqNWw@mail.gmail.com>
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
Subject: Re: [PATCH v2 3/3] fs: add support for SquashFS 4.0
To: barebox <barebox@lists.infradead.org>

On Tue, Feb 16, 2016 at 9:23 AM,  <yegorslists@googlemail.com> wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
>
> The driver was imported from Linux 4.4.
>
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
> Changes:
>         v2: - fix checkpatch errors
>             - remove spinlock/wait code from cache implementation
>             - fix directory listing
>             - add documentation entry about SquashFS
>             - fix compiling without XZ enabled
>             - fix some memory leaks

Memory leaks:

1. mount still produces 20 bytes, that I still haven't identified
2. ls -l has about 300 bytes, how do I best handle qstr duplicating?
Its name is *const char **. If I'm doing alloc() I'm breaking this
qualifier.
3. reading a file, i.e. cat has no memory leak so far according to meminfo

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
