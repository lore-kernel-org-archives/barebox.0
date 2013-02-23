Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9Ejl-0005gt-DN
 for barebox@lists.infradead.org; Sat, 23 Feb 2013 13:01:58 +0000
Date: Sat, 23 Feb 2013 14:01:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130223130153.GH1906@pengutronix.de>
References: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 next 0/2] defenv2: complete move config-board out of
 /env/init
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 22, 2013 at 11:10:40AM +0100, Fabio Porcedda wrote:
> v2:
>  - add patch 2/2 for telit-evk-pro3
> 
> Fabio Porcedda (2):
>   defenv2: comment setting default values in /env/config
>   ARM at91 telit-evk-pro3: move config-board out of /env/init
> 
>  arch/arm/boards/telit-evk-pro3/env/config-board      | 8 ++++++++
>  arch/arm/boards/telit-evk-pro3/env/init/config-board | 8 --------
>  defaultenv-2/base/config                             | 8 ++++----
>  3 files changed, 12 insertions(+), 12 deletions(-)
>  create mode 100644 arch/arm/boards/telit-evk-pro3/env/config-board
>  delete mode 100644 arch/arm/boards/telit-evk-pro3/env/init/config-board

Applied, thanks. I decided to apply it to next though as I tend to be
careful with changes to master.

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
