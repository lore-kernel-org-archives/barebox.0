Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJluR-0008Jb-Sk
 for barebox@lists.infradead.org; Fri, 18 May 2018 20:23:29 +0000
Date: Fri, 18 May 2018 22:23:15 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180518202315.GB26895@ravnborg.org>
References: <20180517205837.32421-1-andrew.smirnov@gmail.com>
 <20180517205837.32421-24-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180517205837.32421-24-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 23/28] ARM: mmu: Make sure that address is 1M aligned
 in arm_create_pte()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2018 at 01:58:32PM -0700, Andrey Smirnov wrote:
> If address passed arm_create_pte() is not 1M (PGDIR_SIZE) aligned,
> page table that is created will end up having unexpected mapping
> offset, breaking "1:1 mapping" assumption and leading to bugs that are
> not immediately obvious in their nature.
> 
> To prevent this and because all of the callers already do said
> alignement in-place, move the alignment code to be a part of
  alignment

> are_create_pte().
  arm_create_pte()


It is so easy to spot spelling errors made by others,
so why is it that one so often fails to find spelling
errors made by one self :-(

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
