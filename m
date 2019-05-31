Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWj8u-0004yD-D0
 for barebox@lists.infradead.org; Fri, 31 May 2019 15:08:29 +0000
Received: by mail-qt1-x843.google.com with SMTP id z24so1211174qtj.10
 for <barebox@lists.infradead.org>; Fri, 31 May 2019 08:08:26 -0700 (PDT)
Date: Fri, 31 May 2019 11:08:24 -0400
Message-ID: <20190531110824.GB3699@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
In-Reply-To: <20190531094730.8265-3-l.stach@pengutronix.de>
References: <20190531094730.8265-1-l.stach@pengutronix.de>
 <20190531094730.8265-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Re: [PATCH 3/3] ARM: rdu3: disable i210 network interface
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 31 May 2019 11:47:30 +0200, Lucas Stach <l.stach@pengutronix.de> wrote:
> This causes large timeouts when trying to bring it up. The FEC interface
> is good enough for NFS booting.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Makes sense, I pushed a similar patch for the Dev Boards.

Reviewed-by: Vivien Didelot <vivien.didelot@gmail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
