Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x233.google.com ([2607:f8b0:400d:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNQlY-0005P2-Kd
 for barebox@lists.infradead.org; Sun, 24 Jan 2016 19:56:05 +0000
Received: by mail-qk0-x233.google.com with SMTP id x1so47580828qkc.1
 for <barebox@lists.infradead.org>; Sun, 24 Jan 2016 11:55:42 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1453663456-5168-1-git-send-email-yegorslists@googlemail.com>
References: <1453663456-5168-1-git-send-email-yegorslists@googlemail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Sun, 24 Jan 2016 20:55:22 +0100
Message-ID: <CAGm1_ksoy5BweOmR1FYaTG4=C4jZnxtvaBgukpbasJv6tDGSkA@mail.gmail.com>
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
Subject: Re: [RFC] fs: move super_block and inode definitions to central fs.h
 header
To: barebox <barebox@lists.infradead.org>

On Sun, Jan 24, 2016 at 8:24 PM, Yegor Yefremov
<yegorslists@googlemail.com> wrote:
> Both super_block and inode are common to various file systems, so
> move them to the central place.
>
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  fs/ubifs/ubifs.h | 134 +------------------------------------------------------
>  include/fs.h     | 134 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 135 insertions(+), 133 deletions(-)

I'm trying to port SquashFS to Barebox. SquashFS uses at least both
super_block structure as also inode structure. Does it make sense to
introduce include/linux/fs.h?

What to do with struct timespec? It is defined in uapi part. Should it
go to include/linux/barebox-wrapper.h?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
