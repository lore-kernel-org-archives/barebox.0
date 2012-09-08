Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAMEE-0003JU-0n
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 14:41:47 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2BD4DFF8CAC
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 16:49:26 +0200 (CEST)
Date: Sat, 8 Sep 2012 16:42:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120908144203.GY20330@game.jcrosoft.org>
References: <20120907120713.GQ20330@game.jcrosoft.org>
 <1347020017-12110-1-git-send-email-plagnioj@jcrosoft.com>
 <1347020017-12110-9-git-send-email-plagnioj@jcrosoft.com>
 <20120907182106.GA18243@pengutronix.de>
 <20120908054033.GT20330@game.jcrosoft.org>
 <20120908061730.GV20330@game.jcrosoft.org>
 <20120908134706.GB18243@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908134706.GB18243@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:47 Sat 08 Sep     , Sascha Hauer wrote:
> On Sat, Sep 08, 2012 at 08:17:30AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 07:40 Sat 08 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 20:21 Fri 07 Sep     , Sascha Hauer wrote:
> > > > On Fri, Sep 07, 2012 at 02:13:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > 
> > > > Given that the bootp support seems to have nearly nothing in common
> > > > with the boot/net file wouldn't it be better to just add a new file
> > > > boot/bootp?
> > > why not with the boot sequence we can do so
> > I try to implement it but at the end we duplicate it
> > As we may want to just pass the rootpath via bootp
> > 
> > and the reset hardcoded
> > 
> > It's better to keep it's support in the same file as the static params are
> > fallback one
> 
> I really don't like the approach at all.
> 
> The current /env/boot/* scripts are written with the intention that they
> should be simple scripts which are easily adjustable. They are also
> meant as templates to add other board/company/project specific files.
> 
> Now it only takes one patch series to turn them into complex scripts
> which after staring at them for half an hour I still not fully
> understand. I don't understand why this must be so, because it seems
> what the scripts do is a complex way of saying:
> 
> path=/mnt/tftp
> global.bootm.image="${path}/${global.dhcp.bootfile}"
> global.bootm.oftree="${path}/${global.dhcp.oftree_file}"
> nfsroot="${global.dhcp.rootpath}"
> bootargs-ip
> bootargs-root-nfs -n "$nfsroot"
> 
> Since you introduced a boot sequence support it should be easy to try
> bootp like above and fall back to the regular net boot if it fails.
the issue with nfs is the mount path

you need to mount `dirname file`

but if the file is a symlink this is where it's complex you need to resolv it
and mount the real path

I'd prefer to avoid it but nfs is like this
as you may just be allow to see a part of the host tree via nfs and the host
have different mountpoint

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
