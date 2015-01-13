Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YAwng-00082O-CL
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 08:26:09 +0000
Date: Tue, 13 Jan 2015 09:25:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150113082546.GC23940@pengutronix.de>
References: <20150113061940.GA30554@ns203013.ovh.net>
 <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
 <1421130070-31704-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421130070-31704-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/3] defaultenv-2: introduce /env/rc.d
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 13, 2015 at 07:21:09AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as we now will use symlink on /env/rc.d to specify init order
> 
> the script will be store in /env/init
> 
> so any board can overwrite them or add script that need to run before a
> default one

Boards can overwrite scripts without links. Numbering the files seems
good because it makes the execution order more predictable and easier to
put a script between two other scripts.

But why links? On Linux PCs this allows to separate distribution
provided scripts from their actual (site specific) execution. Also
the same scripts can be executed from different runlevels.
On barebox I see no good reason for links. There is only one runlevel
in barebox and if I don't want to execute a script I can just remove it.

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
