Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJyIG-00073W-Mb
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 07:27:49 +0000
Date: Mon, 4 Jul 2016 09:27:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704072724.GB20657@pengutronix.de>
References: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v4 0/12] Add basic support for arm64
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Raphael,

On Wed, Jun 29, 2016 at 10:22:07AM +0200, Raphael Poggi wrote:
> This patch series introduces a basic support for arm64.
> 
> The arm64 code is merged in the current arch/arm directory.
> I try to be iterative in the merge process, and find correct solutions
> to handle both architecture at some places.
> 
> I test the patch series by compiling arm64 virt machine and arm32 vexpress-a9 and test it
> in qemu, everything seems to work.


I'm happy with te general structure now. There surely still is much work
to do for full aarch64 support, but the current state does not disturb arm32 and
I think the remaining issues can be fixed in tree. I can merge this
series if you like, or I could delay merging in case you want to
continue working on this series without having to create incremental
patches.

Finally could you provide a qemu  command line to start the image? A
patch adding Documentation/boards/aarch64-qemu-virt.rst similar to
Documentation/boards/digic.rst would be nice.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
