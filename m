Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TALNQ-0002wE-9j
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 13:47:14 +0000
Date: Sat, 8 Sep 2012 15:47:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120908134706.GB18243@pengutronix.de>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-9-git-send-email-plagnioj@jcrosoft.com>
 <20120907182106.GA18243@pengutronix.de>
 <20120908054033.GT20330@game.jcrosoft.org>
 <20120908061730.GV20330@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908061730.GV20330@game.jcrosoft.org>
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
Subject: Re: [PATCH 09/11] defaultenv-2: boot/net add bootp support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 08, 2012 at 08:17:30AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 07:40 Sat 08 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 20:21 Fri 07 Sep     , Sascha Hauer wrote:
> > > On Fri, Sep 07, 2012 at 02:13:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > 
> > > Given that the bootp support seems to have nearly nothing in common
> > > with the boot/net file wouldn't it be better to just add a new file
> > > boot/bootp?
> > why not with the boot sequence we can do so
> I try to implement it but at the end we duplicate it
> As we may want to just pass the rootpath via bootp
> 
> and the reset hardcoded
> 
> It's better to keep it's support in the same file as the static params are
> fallback one

I really don't like the approach at all.

The current /env/boot/* scripts are written with the intention that they
should be simple scripts which are easily adjustable. They are also
meant as templates to add other board/company/project specific files.

Now it only takes one patch series to turn them into complex scripts
which after staring at them for half an hour I still not fully
understand. I don't understand why this must be so, because it seems
what the scripts do is a complex way of saying:

path=/mnt/tftp
global.bootm.image="${path}/${global.dhcp.bootfile}"
global.bootm.oftree="${path}/${global.dhcp.oftree_file}"
nfsroot="${global.dhcp.rootpath}"
bootargs-ip
bootargs-root-nfs -n "$nfsroot"

Since you introduced a boot sequence support it should be easy to try
bootp like above and fall back to the regular net boot if it fails.

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
