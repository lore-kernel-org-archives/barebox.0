Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSshZ-0004Qs-9p
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 17:00:38 +0000
Date: Mon, 29 Oct 2012 18:00:10 +0100
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20121029170010.GA3257@sig21.net>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
 <20121029085055.GV24458@pengutronix.de>
 <20121029095604.GA31639@sig21.net>
 <20121029160513.GA29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121029160513.GA29599@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 29, 2012 at 05:05:13PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:56 Mon 29 Oct     , Johannes Stezenbach wrote:
> > 
> > I wonder how this will work in practice.  If I use a simple
> > /env/bin/init script and someone makes changes to a command
> > which isn't used by my /env/bin/init, will it still cause
> > my environment to be detected as incompatible?
> > 
> > Maybe it would be a good idea to give the user control
> > over when to change COMMAND_ABI_VERSION by putting it into menuconfig?
> > 
> > Either way I guess it means the default environment's init script
> > would need to implement automatic update to not lose important  settings.
> here you loose nothing we just load defaulenv then you load the old one if you
> one the code does not save the defaultenv automatlically

Well, the whole point of having an environment is that the
user can save a customized version.  So by definition
falling back to the default means you are going to annoy seme users
(even though it's usually not difficult to restore the customizations).

> > Bottom line: It's much better to not make incompatible ABI changes _ever_.
> I disagree here sometimes we do need as the ABI is really not convinian or
> POSIX or like this linux one

Well, if an ABI or API is fundamentally broken it might be
a good idea to fix it.  But it should be well justified.
And COMMAND_ABI_VERSION seems to make the issue worse and not
better, by forcing an incompatibility where there actually
might be none.

Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
