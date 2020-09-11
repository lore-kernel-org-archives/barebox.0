Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-co1nam11on2099.outbound.protection.outlook.com
 ([40.107.220.99] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGnC7-0005le-Ck
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 17:50:44 +0000
From: Trent Piepho <trent.piepho@synapse.com>
Date: Fri, 11 Sep 2020 17:50:39 +0000
Message-ID: <MW3PR18MB348474DA5350DA9BC3B4A9BA8A240@MW3PR18MB3484.namprd18.prod.outlook.com>
References: <20200909193650.347646-1-trent.piepho@synapse.com>,
 <8debe2fb-d16a-856d-8d95-631964c56d94@pengutronix.de>
In-Reply-To: <8debe2fb-d16a-856d-8d95-631964c56d94@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] aiodev: Name channels with device instance name
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> > On 9/9/20 9:36 PM, Trent Piepho wrote:
> > Change the channel naming to use the device instance name, e.g.
> > "aiodev0", rather than the aiodev's base name.=A0 This makes the names
> > used aiochannel_get_by_name() match the environment variable names and
> > also avoids duplicate names with more than one dynamically allocated
> > aiodev.
>
> sounds good, but that would silently break existing users, wouldn't i?
> There are none in-tree, but I assume there are some in external patch
> stacks, otherwise the function would've not been added.
>
> These patch stacks would rebase cleanly and build successfully, but
> still be runtime broken. Would it makes sense to rename
> aiochannel_get_by_name() because the API changed?

Assuming they used dynamic names for the devices.  So probably.

I can rename it to aiochannel_by_name().  There are number of other
functions in barebox that follow that pattern.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
