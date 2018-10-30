Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHOYm-0001AP-Fo
 for barebox@lists.infradead.org; Tue, 30 Oct 2018 07:35:33 +0000
Date: Tue, 30 Oct 2018 08:33:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181030073347.53i6ynwsfrp2aug3@pengutronix.de>
References: <8b1454dd-7a19-f6c8-d3cd-863372947e4c@mni.thm.de>
 <20181029135332.zdljgjg2lkti3nfv@pengutronix.de>
 <a95255f7-08b4-274a-5e2c-efc2afd3dc5f@mni.thm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a95255f7-08b4-274a-5e2c-efc2afd3dc5f@mni.thm.de>
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
Subject: Re: No default env without Barebox wanting to load from persistant
 storage
To: Martin Hofmann <martin.hofmann@mni.thm.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 30, 2018 at 07:57:23AM +0100, Martin Hofmann wrote:
> 
> 
> On 10/29/18 2:53 PM, Sascha Hauer wrote:
> > Hi Martin,
> > 
> > On Sun, Oct 28, 2018 at 04:24:13PM +0100, Martin Hofmann wrote:
> >> Hello everyone,
> >>
> >> I am currently working on a Barebox port for our own home made architecture
> >> used for educational purpose.
> >>
> >> The port can be found under github.com/mh0fmann/eco32-barebox and starts
> >> being used.
> >>
> >> Our architecture does not have any kind of nand or nor flash that can be
> >> added used for /dev/env0 to store a environment in it but we still want to
> >> use a default compile in enivornment.
> >>
> >> In oderder to use that one is in the in the need to activate
> >> CONFIG_ENV_HANDLING which alaways wants to load a environment from
> >> /dev/env0.
> >>
> >> So the question is - is it not possible to just use a compile in default env
> >> without the need that barebox wants to load another env from somewhere else
> >> or did i miss something on the way?
> > 
> > Indeed this a usecase I never thought of and is not officially
> > supported. However, a
> > 
> > 	default_environment_path_set(NULL);
> > 
> > Should have the desired effect.
> > 
> > Sascha
> > 
> 
> Hello Sascha,
> 
> thanks for the reply!
> 
> But are your sure that setting the default evironment path to NULL would
> have the said effect?
> 
> It will then pass the NULL filepath pointer to open in load_envfs?
> Which in return also doesn't check for if the argumnt is NULL or not..
> 
> Looks like barebox crashes in this case

This most likely goes down to:

| commit c6bdbf6e93a11227f91fbf15b7a36dceb60c526d
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Fri Sep 21 14:18:33 2018 +0200
| 
|     environment: Allow default env path to be NULL
|     
|     Several places assume that the default environment path cannot be NULL.
|     Allow NULL here without crashing.
|     
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This commit is in current master, so it'll be in the next release.

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
