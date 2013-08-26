Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDvlf-0005Zt-3Q
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 12:19:35 +0000
Message-ID: <521B47C1.2040205@phytec.de>
Date: Mon, 26 Aug 2013 14:19:13 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <1377241222-6908-1-git-send-email-t.gamez@phytec.de>
 <20130826064941.GA30088@pengutronix.de>
In-Reply-To: <20130826064941.GA30088@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3 for next] AM33xx: Cleanup of lowlevel code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 26.08.2013 08:49, schrieb Sascha Hauer:
> Hi Teresa,
>
> On Fri, Aug 23, 2013 at 09:00:20AM +0200, Teresa G=E1mez wrote:
>> There is a lot of duplicate lowlevel code between the
>> am33xx boards. Move this code to am33xx_generic and
>> create structs for sdram settings.
> I'm mostly fine with this series. I made some small changes to it and
> rebased my beaglebone black series ontop of it. I'm about to repost the
> my series which includes your changed patches. It would be good if you
> could have a look.

Beside of the missing inlcude everything looks fine.

Thanks.

Teresa


>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
