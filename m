Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f44.google.com ([74.125.83.44])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1URhp5-00085h-1l
 for barebox@lists.infradead.org; Mon, 15 Apr 2013 11:43:47 +0000
Received: by mail-ee0-f44.google.com with SMTP id c41so2162193eek.17
 for <barebox@lists.infradead.org>; Mon, 15 Apr 2013 04:43:43 -0700 (PDT)
Date: Mon, 15 Apr 2013 13:45:37 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130415114536.GA1943@x61s.campuswlan.hs-rm.de>
References: <1365679699-4475-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365679699-4475-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [RFC] omap4-fb: use uncached screen_base
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Apr 11, 2013 at 01:28:19PM +0200, Jan Weitzel wrote:
> If the buffer is cached the image on the LCD is broken. Only some small
> lines on the last rows. Flushing the cache "repairs" the image.
> 
> Is remap_range the right way to get a non cached buffer?
> This patch only covers prealloc_screen, not dynamic
> If the buffer is dynamic, is the use of dma_alloc_coherent right? Or should
> the buffer remaped again if freed?
> ---
>  drivers/video/omap4.c |    5 +++++

Sry, where is this file in the current barebox version?
It's something which is in wip?

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
