Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yn04V-0004P6-64
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 07:36:48 +0000
Received: by lagv1 with SMTP id v1so97737269lag.3
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2015 00:36:24 -0700 (PDT)
Date: Tue, 28 Apr 2015 10:41:28 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150428104128.cccc96d0de0357315b90caf6@gmail.com>
In-Reply-To: <1429735158-4250-1-git-send-email-antonynpavlov@gmail.com>
References: <1429735158-4250-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] checkpatch: add DT compatible string documentation checks
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 22 Apr 2015 23:39:18 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

ping

> This adds a simple check that any compatible strings in DeviceTree dts
> files are present in Documentation/devicetree/bindings and
> in dts/Bindings/.
> =

> Vendor prefixes are also checked for existing in vendor-prefixes.txt.
> =

> This code is based on linux v4.0-rc6 checkpatch.pl dt-checking code by
> Rob Herring & Florian Vaussard:
> =

>     Rob Herring (2):
>         checkpatch: add DT compatible string documentation checks
>         checkpatch: fix wildcard DT compatible string checking
> =

>     Florian Vaussard (3):
>         checkpatch: fix spurious vendor compatible warnings
>         checkpatch: check compatible strings in .c and .h too
>         checkpatch: improve the compatible vendor match
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Florian Vaussard <florian.vaussard@epfl.ch>
> ---
>  scripts/checkpatch.pl | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> =

> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index a40d32c..8d96434 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -1466,6 +1466,41 @@ sub process {
>  			#print "is_end<$is_end> length<$length>\n";
>  		}
>  =

> +# check for DT compatible documentation
> +		if (defined $root &&
> +			(($realfile =3D~ /\.dtsi?$/ && $line =3D~ /^\+\s*compatible\s*=3D\s*\=
"/) ||
> +			 ($realfile =3D~ /\.[ch]$/ && $line =3D~ /^\+.*\.compatible\s*=3D\s*\=
"/))) {
> +
> +			my @compats =3D $rawline =3D~ /\"([a-zA-Z0-9\-\,\.\+_]+)\"/g;
> +
> +			# linux device tree files
> +			my $dt_path =3D $root . "/dts/Bindings/";
> +			my $vp_file =3D $dt_path . "vendor-prefixes.txt";
> +
> +			# barebox-specific bindings
> +			$dt_path =3D $dt_path . " " . $root . "/Documentation/devicetree/bind=
ings/";
> +
> +			foreach my $compat (@compats) {
> +				my $compat2 =3D $compat;
> +				$compat2 =3D~ s/\,[a-zA-Z0-9]*\-/\,<\.\*>\-/;
> +				my $compat3 =3D $compat;
> +				$compat3 =3D~ s/\,([a-z]*)[0-9]*\-/\,$1<\.\*>\-/;
> +				`grep -Erq "$compat|$compat2|$compat3" $dt_path`;
> +				if ( $? >> 8 ) {
> +					WARN(
> +					     "DT compatible string \"$compat\" appears un-documented -- che=
ck $dt_path\n" . $herecurr);
> +				}
> +
> +				next if $compat !~ /^([a-zA-Z0-9\-]+)\,/;
> +				my $vendor =3D $1;
> +				`grep -Eq "^$vendor\\b" $vp_file`;
> +				if ( $? >> 8 ) {
> +					WARN(
> +					     "DT compatible string vendor \"$vendor\" appears un-documented=
 -- check $vp_file\n" . $herecurr);
> +				}
> +			}
> +		}
> +
>  # check we are in a valid source file if not then ignore this hunk
>  		next if ($realfile !~ /\.(h|c|s|S|pl|sh)$/);
>  =

> -- =

> 2.1.4
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
