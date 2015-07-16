Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFlW0-0001e8-UM
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 15:56:05 +0000
Received: by lblf12 with SMTP id f12so46337074lbl.2
 for <barebox@lists.infradead.org>; Thu, 16 Jul 2015 08:55:42 -0700 (PDT)
Date: Thu, 16 Jul 2015 19:02:42 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150716190242.37f8520223c145f139f1f136@gmail.com>
In-Reply-To: <1437054633-14482-1-git-send-email-d.schultz@phytec.de>
References: <1437054633-14482-1-git-send-email-d.schultz@phytec.de>
Mime-Version: 1.0
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
Subject: Re: [RFC] commands: Add dhrystone
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, 16 Jul 2015 15:50:33 +0200
Daniel Schultz <d.schultz@phytec.de> wrote:

> This tool will help to measure the system performance.
> =

> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>

...
> +
> +BAREBOX_CMD_HELP_START(dhrystone)
> +BAREBOX_CMD_HELP_TEXT(
> +"this command runs a dhrystone benchmark to get an astimation of the CPU=
 freq")
                      ^^                              ^^^^^^^^^^ estimation?
                        do you mean that there are __several__ __different_=
_ dhrystone benchmarks?


> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(dhrystone)
> +	.cmd		=3D do_dhrystone,
> +	BAREBOX_CMD_DESC("run dhrystone test, specify number of runs")
> +	BAREBOX_CMD_OPTS("number_of_runs")
> +	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> +	BAREBOX_CMD_HELP(cmd_dhrystone_help)
> +BAREBOX_CMD_END
> -- =

> 1.9.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
