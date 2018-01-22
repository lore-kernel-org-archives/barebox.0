Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edcL2-0001mj-NK
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 13:40:43 +0000
Date: Mon, 22 Jan 2018 14:40:20 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180122134020.GA22403@ravnborg.org>
References: <20180122100131.11820-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180122100131.11820-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] sandbox: use 'poweroff' command for exit
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony

On Mon, Jan 22, 2018 at 01:01:31PM +0300, Antony Pavlov wrote:
> The 'poweroff' command is more appropriate for exit
> barebox than 'reset'.

Changelog says "reset" but code says "restart".

Could the restart command be useful for others than sandbox?
In other words, is it correct to delete this command?
	
	Sam

>  arch/sandbox/board/restart.c           | 17 -----------------

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
