Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e40vI-00075R-74
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 08:38:58 +0000
Date: Mon, 16 Oct 2017 10:38:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016083834.tayzv4vxenid5pe7@pengutronix.de>
References: <1507278196-15424-1-git-send-email-gp@high-consulting.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1507278196-15424-1-git-send-email-gp@high-consulting.de>
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
Subject: Re: [PATCH v1] writef: added command to write content of variable to
 file
To: Gerd Pauli <gp@high-consulting.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 06, 2017 at 10:23:16AM +0200, Gerd Pauli wrote:
> writef: added command to write content of variable to file.
>         Adds a newline at the emd of the string.
> 
> Usage: writef VAR FILE

Do we need this command at all? It could be replaced with

echo -o FILE $foo

no?

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
