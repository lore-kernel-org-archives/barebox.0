Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22f.google.com ([2607:f8b0:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTskw-0005xo-8c
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 15:02:09 +0000
Received: by mail-vk0-x22f.google.com with SMTP id c3so38237923vkb.3
 for <barebox@lists.infradead.org>; Thu, 11 Feb 2016 07:01:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1455202575-9855-1-git-send-email-yegorslists@googlemail.com>
References: <1455202575-9855-1-git-send-email-yegorslists@googlemail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 11 Feb 2016 16:01:25 +0100
Message-ID: <CAGm1_ksxvKAK4C0pY-=1mex61bgyz+D6NPwGhENLkkZF3=H8cg@mail.gmail.com>
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
Subject: Re: [RFC] fs: add support for SquashFS
To: barebox <barebox@lists.infradead.org>

On Thu, Feb 11, 2016 at 3:56 PM,  <yegorslists@googlemail.com> wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
>
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>

This is a first attempt to add SqaushFS to Barebox. The port is still
not fully functional, but it is possible to read files.

TODO:

1. improve directory listing: for now only root directory can be listed
2. support symlinks
3. implement freeing allocated structures on routine exit
4. remove Linux related stuff like spinlocks, wait etc.
5. add other decompressors (Gzip etc.)

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
