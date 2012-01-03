Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ri3Gz-0004wU-Gh
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 12:15:22 +0000
Message-ID: <4F02F14D.7030903@phytec.de>
Date: Tue, 03 Jan 2012 13:15:09 +0100
From: =?ISO-8859-1?Q?J=FCrgen_Kilb?= <j.kilb@phytec.de>
MIME-Version: 1.0
References: <20111222173227.GZ27267@pengutronix.de>
 <1324643869-11016-1-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1324643869-11016-1-git-send-email-J.Kilb@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2 1/2] Add support for the Phytec phyCARD-A-L1 (PCA-A-L1).
To: barebox@lists.infradead.org

Hi Sascha
Happy new year!

On 23.12.2011 13:37, Juergen Kilb wrote:
> Signed-off-by: Juergen Kilb<J.Kilb@phytec.de>
> ---
>
> V2:
> - removed unused defines in config.h
> - removed hardcoded ip addresses in the default environment, switched to =
dhcp mode.
> - removed kernelimage_type from the default_environment, bootm handles th=
is now.
> - removed unnecessary return in pcaal1_sdrc_init().
> - removed #ifdef around the console device.
> - fixed indention of struct smsc_cfg.
> - deleted platfrom.s and replaced it with lowlevel.c.
> - disabled bootu and bootm in defconfig.
>
ping?

maybe you missed my answer to your comments.
because I've send it only to the list.

greetings,
J=FCrgen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
