Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TStkN-0007Lo-WF
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 18:07:37 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D4083FFB301
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2012 19:17:51 +0100 (CET)
Date: Mon, 29 Oct 2012 19:05:21 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121029180521.GB29599@game.jcrosoft.org>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
 <20121029085055.GV24458@pengutronix.de>
 <20121029095604.GA31639@sig21.net>
 <20121029160513.GA29599@game.jcrosoft.org>
 <20121029170010.GA3257@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121029170010.GA3257@sig21.net>
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
Subject: Re: [PATCH 1/3] command: introduce abi version
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

On 18:00 Mon 29 Oct     , Johannes Stezenbach wrote:
> On Mon, Oct 29, 2012 at 05:05:13PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 10:56 Mon 29 Oct     , Johannes Stezenbach wrote:
> > > 
> > > I wonder how this will work in practice.  If I use a simple
> > > /env/bin/init script and someone makes changes to a command
> > > which isn't used by my /env/bin/init, will it still cause
> > > my environment to be detected as incompatible?
> > > 
> > > Maybe it would be a good idea to give the user control
> > > over when to change COMMAND_ABI_VERSION by putting it into menuconfig?
> > > 
> > > Either way I guess it means the default environment's init script
> > > would need to implement automatic update to not lose important  settings.
> > here you loose nothing we just load defaulenv then you load the old one if you
> > one the code does not save the defaultenv automatlically
> 
> Well, the whole point of having an environment is that the
> user can save a customized version.  So by definition
> falling back to the default means you are going to annoy seme users
> (even though it's usually not difficult to restore the customizations).
here the issue iin the env we have 2 part the default and the config

so we should speperate them so we can update the rootfs and keep the config
ABI

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
