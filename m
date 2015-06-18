Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5VqW-0000H5-Ah
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 09:10:54 +0000
Date: Thu, 18 Jun 2015 11:10:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150618091029.GR26575@pengutronix.de>
References: <1433490685-27486-1-git-send-email-s.christ@phytec.de>
 <1433490685-27486-2-git-send-email-s.christ@phytec.de>
 <20150615102008.GA15736@lws-christ>
 <20150616135241.GT6325@pengutronix.de>
 <20150618075723.GB2575@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150618075723.GB2575@lws-christ>
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
Subject: Re: [PATCH v2] barebox update: add note after successful update
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 18, 2015 at 09:57:23AM +0200, Stefan Christ wrote:
> Hi Sascha,
> 
> > I would find this message more useful from the new, updated barebox
> > rather than from the barebox that does the update. This way we could
> > also see the message with offline updates when for example a SD
> > card has been updated on an external host. Also we would have more
> > freedom to react on an outdated environment in the next steps. We could
> > for example make it configurable to completely ignore an outdated
> > environment or just to issue a warning message.
> > Doing this should be fairly simple, we could store the barebox version
> > in a nv variable and compare the variable with the current version
> > during startup.
> > 
> > What do you think?
> 
> This would solve the issue for our users.
> 
> If I understand you correctly, this approach is different from a separate
> versioning of the environment data, since the barebox verison in UTS_RELEASE is
> written to the nv variable. So nobody can forget to increase the version number
> of the environment and a warning message is printing to the user as a new
> barebox with a different version is flashed.

Yes.

> 
> I looked at the code a bit. The first step would be to write the version of the
> running barebox into environment in the function envfs_save() and compare the
> version in the function envfs_load(). Correct? In envfs_load() the warning
> message would be printed.

Yes.

> 
> But we cannot interrupt the boot sequence and ask the user whether he/she wants
> to use the old environment or use the default environment, because the default
> boot process must be non-interactive. So only a warning can be printed, right?

Right. We can at some point make it configurable to a) use the default
env b) Use the saved env anyway or c) do something else in such a case.
For now I think being able to detect an outdated environment and to 
print a warning is a good first step.

BTW I think it's clear that an environment generated with another
barebox version doesn't necessarily mean that it's outdated. Also
detecting the same version doesn't necessarily mean it's compatible.
It's just a good indicator. The alternative would be to have some
counter which we update with each incompatible environment change, but
I think we are not always aware of incompatible changes so increasing
that counter would be forgotten. Also not all incompatible changes
would affect all boards. I think such a counter would not be feasible.

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
